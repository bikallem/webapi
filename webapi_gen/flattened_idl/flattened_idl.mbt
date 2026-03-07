///|
/// Flattened interface with mixins merged in, decoupled from PartialMergedInterface.
pub(all) struct FlattenedInterface {
  name : String
  members : Array[@parser.InterfaceMemberExtendedAttributes]
  inheritance : String?
  specs : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
/// Flattened IDL after flattening mixins, flattening dictionaries inheritance
/// hierarchy and flattening callback interfaces to callback functions.
pub struct FlattenedIdl {
  interfaces : Map[String, FlattenedInterface]
  dictionaries : Map[String, MergedDictionaryIR]
  namespaces : Map[String, @partial_merged.PartialMergedNamespace]
  enums : Map[String, @parser.EnumDefinition]
  typedefs : Map[String, @parser.TypedefDefinition]
  callbacks : Map[String, @parser.CallbackFunctionDefinition]
} derive(Show, ToJson)

///|
/// Merged dictionary IR with all inherited members combined.
pub(all) struct MergedDictionaryIR {
  name : String
  members : Array[@parser.DictionaryMember]
  specs : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
fn MergedDictionaryIR::new(
  name : String,
  members : Array[@parser.DictionaryMember],
  specs : @hashset.HashSet[String],
) -> MergedDictionaryIR {
  { name, members, specs }
}

///|
/// Walks the full inheritance chain for a dictionary, collecting ancestor members
/// from most-distant ancestor to self. Uses a visited set for cycle detection.
fn flatten_dictionary_members(
  dictionaries : Map[String, @partial_merged.PartialMergedDictionary],
  name : String,
) -> (Array[@parser.DictionaryMember], @hashset.HashSet[String]) {
  let visited : @hashset.HashSet[String] = @hashset.new()
  // Collect the chain from self to root
  let chain : Array[String] = []
  let mut current = name
  while true {
    if visited.contains(current) {
      break // cycle detected
    }
    visited.add(current)
    chain.push(current)
    match dictionaries.get(current) {
      Some(dict) =>
        match dict.inheritance {
          Some(parent) => current = parent
          None => break
        }
      None => abort("Dictionary '\{current}' not found in chain from '\{name}'")
    }
  }
  // Reverse to get root-first order, then collect members and specs
  let members : Array[@parser.DictionaryMember] = []
  let specs : @hashset.HashSet[String] = @hashset.new()
  for i = chain.length() - 1; i >= 0; i = i - 1 {
    let dict = dictionaries[chain[i]]
    members.push_iter(dict.members.iter())
    for s in dict.specs {
      specs.add(s)
    }
  }
  (members, specs)
}

///|
/// Inject members from source dictionaries into target dictionaries.
/// Members already present in the target are skipped.
fn inject_dictionary_members(
  dictionaries : Map[String, @partial_merged.PartialMergedDictionary],
  injection : Map[String, String],
  logger : (String) -> Unit,
) -> Unit {
  for target_name, source_name in injection {
    match (dictionaries.get(target_name), dictionaries.get(source_name)) {
      (Some(target_dict), Some(source_dict)) => {
        let existing : @hashset.HashSet[String] = @hashset.from_iter(
          target_dict.members.iter().map(fn(m) { m.name }),
        )
        for mem in source_dict.members {
          if not(existing.contains(mem.name)) {
            target_dict.members.push(mem)
          }
        }
      }
      _ =>
        logger(
          "Warning: dictionary_member_injection: '\{target_name}' or '\{source_name}' not found",
        )
    }
  }
}

///|
/// Flatten all dictionaries by resolving inheritance chains.
fn flatten_dictionaries(
  dictionaries : Map[String, @partial_merged.PartialMergedDictionary],
) -> Map[String, MergedDictionaryIR] {
  dictionaries
  .iter()
  .map(fn(it) {
    let (dict_name, dict) = it
    let (members, specs) = flatten_dictionary_members(dictionaries, dict_name)
    (dict_name, MergedDictionaryIR::new(dict.name, members, specs))
  })
  |> Map::from_iter
}

///|
/// Merge mixin members into their target interfaces via includes statements.
fn merge_mixins_into_interfaces(
  partial_merged : @partial_merged.PartialMerged,
  logger : (String) -> Unit,
) -> Unit {
  for include_stmt in partial_merged.include_statements {
    match partial_merged.mixins.get(include_stmt.mixin_name) {
      Some(mxn) =>
        match partial_merged.interfaces.get(include_stmt.interface_name) {
          Some(iface) =>
            partial_merged.interfaces[include_stmt.interface_name] = iface.merge(
              mxn.members,
              iface.inheritance,
              iface.specs,
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
}

///|
/// Convert callback interface definitions to callback function definitions.
fn convert_callback_interfaces(
  callback_interfaces : Map[String, @parser.CallbackInterfaceDefinition],
  callbacks : Map[String, @parser.CallbackFunctionDefinition],
  logger : (String) -> Unit,
) -> Unit {
  for name, cbi in callback_interfaces {
    let op = loop cbi.members.map(m => m.callback_interface_member)[:] {
      [] => {
        logger(
          "CallbackInterface '\{name}' has no operation member to convert to CallbackFunction",
        )
        break None
      }
      [Operation(op), ..] => break Some(op)
      [_, .. rest] => continue rest
    }
    guard op is Some(op) else { continue }
    callbacks[name] = @parser.CallbackFunctionDefinition::{
      name: cbi.name,
      return_type: op.return_type,
      arguments: op.arguments,
      spec: cbi.spec,
    }
  }
}

///|
/// Flattens the IDL by merging dictionary inheritance hierarchy, flattening mixins into interfaces
/// and converting callback interfaces to callback functions.
pub fn flatten(
  partial_merged : @partial_merged.PartialMerged,
  logger : (String) -> Unit,
  dictionary_member_injection? : Map[String, String] = {},
) -> FlattenedIdl {
  inject_dictionary_members(
    partial_merged.dictionaries,
    dictionary_member_injection,
    logger,
  )
  let dictionaries = flatten_dictionaries(partial_merged.dictionaries)
  merge_mixins_into_interfaces(partial_merged, logger)
  let interfaces : Map[String, FlattenedInterface] = Map::new()
  for name, iface in partial_merged.interfaces {
    interfaces[name] = FlattenedInterface::{
      name: iface.name,
      members: iface.members,
      inheritance: iface.inheritance,
      specs: iface.specs,
    }
  }
  let idl = FlattenedIdl::{
    interfaces,
    dictionaries,
    namespaces: partial_merged.namespaces,
    enums: partial_merged.enums,
    typedefs: partial_merged.typedefs,
    callbacks: partial_merged.callback_functions,
  }
  convert_callback_interfaces(
    partial_merged.callback_interfaces,
    idl.callbacks,
    logger,
  )
  idl
}

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
