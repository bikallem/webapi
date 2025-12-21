///|
/// Flattened IDL after flattening mixins, flattening dictionaries inheritance 
/// hierarchy and flattening callback interfaces to callback functions.
pub struct FlattenedIdl {
  interfaces : Map[String, PartialMergedInterface]
  dictionaries : Map[String, MergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callbacks : Map[String, CallbackFunctionDefinition]
} derive(Show, ToJson)

///|
/// Returns the transitive inheritance chain (direct parent first) for an
/// interface name.
///
/// Example: `HTMLElement` -> `["Element", "Node", "EventTarget"]`.
///
/// If the interface is unknown, or a parent is missing, the chain is truncated.
/// Cycles are detected and terminate the walk.
pub fn get_interface_ancestors(
  idl : FlattenedIdl,
  name : String,
) -> Array[String] {
  if not(idl.interfaces.contains(name)) {
    return []
  }
  let ancestors : Array[String] = []
  let visited : @hashset.HashSet[String] = @hashset.HashSet::from_array([name])
  let mut current = name
  while true {
    guard idl.interfaces.get(current) is Some(iface) else { break }
    match iface.inheritance {
      None => break
      Some(parent) if visited.contains(parent) ||
        not(idl.interfaces.contains(parent)) => break
      Some(parent) => {
        ancestors.push(parent)
        visited.add(parent)
        current = parent
      }
    }
  }
  ancestors
}

///|
/// Flattens the IDL by merging dictionary inheritance hierarchy, flattening mixins into interfaces 
/// and converting callback interfaces to callback functions.
pub fn flatten(
  partial_merged : PartialMerged,
  logger : (String) -> Unit,
) -> FlattenedIdl {
  // Merge dictionaries by combining members from parent dictionaries
  let dictionaries = partial_merged.dictionaries
    .iter()
    .map(it => {
      let (dict_name, dict) : (String, PartialMergedDictionary) = it
      match dict.inheritance {
        None => // No inheritance, just copy members to MergedDictionaryIR
          (dict_name, MergedDictionaryIR::new(dict.name, dict.members))
        Some(parent_name) => // Merge parent members
          match partial_merged.dictionaries.get(parent_name) {
            Some(parent_dict) => {
              let merged_members = parent_dict.members + dict.members
              let merged_dict = MergedDictionaryIR::new(
                dict.name,
                merged_members,
              )
              (dict_name, merged_dict)
            }
            None =>
              abort(
                "Parent dictionary '\{parent_name}' for '\{dict_name}' not found",
              )
          }
      }
    })
    |> Map::from_iter

  // flatten mixins into interfaces
  // Skip include statements where interface or mixin is missing (may have been filtered out)
  for include_stmt in partial_merged.include_statements {
    match partial_merged.mixins.get(include_stmt.mixin_name) {
      Some(mxn) =>
        match partial_merged.interfaces.get(include_stmt.interface_name) {
          Some(iface) =>
            partial_merged.interfaces[include_stmt.interface_name] = iface.merge(
              mxn.members,
              iface.inheritance,
            )
          None =>
            logger(
              "Skipped includes statement: Interface '\{include_stmt.interface_name}' not found",
            )
        }
      None =>
        logger(
          "Skipped includes statement: Mixin '\{include_stmt.mixin_name}' not found",
        )
    }
  }
  let merged_idl = FlattenedIdl::{
    interfaces: partial_merged.interfaces,
    dictionaries,
    enums: partial_merged.enums,
    typedefs: partial_merged.typedefs,
    callbacks: partial_merged.callback_functions,
  }

  // Transform CallbackInterfaceDefinitions to CallbackFunctionDefinitions  
  for name, cbi in partial_merged.callback_interfaces {
    // CallbackInterface::members only holds one operation member
    let op = loop cbi.members.map(m => m.callback_interface_member)[:] {
      [] => {
        logger(
          "CallbackInterface '\{name}' has no operation member to convert to CallbackFunction",
        )
        panic()
      }
      [Operation(op), ..] => break op
      [_, .. rest] => continue rest
    }
    let cbf = CallbackFunctionDefinition::{
      name: cbi.name,
      return_type: op.return_type,
      arguments: op.arguments,
    }
    merged_idl.callbacks[name] = cbf
  }
  merged_idl
}

///|
/// Merged dictionary IR with all inherited members combined.
pub(all) struct MergedDictionaryIR {
  name : String
  members : Array[DictionaryMember]
} derive(Show, ToJson)

///|
fn MergedDictionaryIR::new(
  name : String,
  members : Array[DictionaryMember],
) -> MergedDictionaryIR {
  MergedDictionaryIR::{ name, members }
}
