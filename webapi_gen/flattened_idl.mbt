///|
/// Flattened IDL after flattening mixins, flattening dictionaries inheritance 
/// hierarchy and flattening callback interfaces to callback functions.
struct FlattenedIdl {
  interfaces : Map[String, PartialMergedInterface]
  dictionaries : Map[String, MergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callbacks : Map[String, CallbackFunctionDefinition]
} derive(Show, ToJson)

///|
/// Flattens the IDL by merging dictionary inheritance hierarchy, flattening mixins into interfaces 
/// and converting callback interfaces to callback functions.
fn flatten(partial_merged : PartialMerged) -> FlattenedIdl {
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
            abort(
              "Interface '\{include_stmt.interface_name}' for includes statement not found",
            )
        }
      None =>
        abort(
          "Mixin included in interface '\{include_stmt.interface_name}' not found",
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
      [] =>
        abort(
          "CallbackInterface '\{name}' has no operation member to convert to CallbackFunction",
        )
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
struct MergedDictionaryIR {
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
