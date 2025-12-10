///|
/// Consolidated IDL after merging partials, flattening mixins, and resolving dictionary inheritance.
struct MergedIdl {
  interfaces : Map[String, PartialMergedInterfaceIR]
  dictionaries : Map[String, MergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callbacks : Map[String, CallbackFunctionDefinition]
} derive(Show, ToJson)

///|
fn MergedIdl::from(partial_merge_visitor : PartialMergeVisitor) -> MergedIdl {
  // Merge dictionaries by inheriting members from parent dictionaries
  let dictionaries = partial_merge_visitor.dictionaries
    .iter()
    .map(it => {
      let dict_name = it.0
      let dict = it.1 // PartialMergedDictionaryIR
      match dict.inheritance {
        None => // No inheritance, just copy members to MergedDictionaryIR
          (dict_name, MergedDictionaryIR::new(dict.name, dict.members))
        Some(parent_name) => // Merge parent members
          match partial_merge_visitor.dictionaries.get(parent_name) {
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
  for include_stmt in partial_merge_visitor.include_statements {
    match partial_merge_visitor.mixins.get(include_stmt.mixin_name) {
      Some(mxn) =>
        match
          partial_merge_visitor.interfaces.get(include_stmt.interface_name) {
          Some(iface) =>
            partial_merge_visitor.interfaces[include_stmt.interface_name] = iface.merge(
              mxn.members,
              iface.inheritance,
            )
          None =>
            println(
              "Interface '\{include_stmt.interface_name}' for includes statement not found",
            )
        }
      None =>
        abort(
          "Mixin included in interface '\{include_stmt.interface_name}' not found",
        )
    }
  }
  let merged_idl = MergedIdl::{
    interfaces: partial_merge_visitor.interfaces,
    dictionaries,
    enums: partial_merge_visitor.enums,
    typedefs: partial_merge_visitor.typedefs,
    callbacks: partial_merge_visitor.callback_functions,
  }

  // Transform CallbackInterfaceDefinitions to CallbackFunctionDefinitions  
  for name, cbi in partial_merge_visitor.callback_interfaces {
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
