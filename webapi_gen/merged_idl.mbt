///|
/// Consolidated IDL after merging partials, flattening mixins, and resolving dictionary inheritance.
struct MergedIdl {
  interfaces : Map[String, MergedInterfaceIR]
  dictionaries : Map[String, MergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callbacks : Map[String, CallbackFunctionDefinition]
  callback_interfaces : Map[String, CallbackInterfaceDefinition]
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
  MergedIdl::{
    interfaces: partial_merge_visitor.interfaces,
    dictionaries,
    enums: partial_merge_visitor.enums,
    typedefs: partial_merge_visitor.typedefs,
    callbacks: partial_merge_visitor.callback_functions,
    callback_interfaces: partial_merge_visitor.callback_interfaces,
  }
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
