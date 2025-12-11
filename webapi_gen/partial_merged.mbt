///|
/// Visitor that merges partial interfaces, mixins, and dictionaries into their
/// primary definitions.
struct PartialMerged {
  interfaces : Map[String, PartialMergedInterface]
  mixins : Map[String, PartialMergedMixin]
  dictionaries : Map[String, PartialMergedDictionary]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callback_functions : Map[String, CallbackFunctionDefinition]
  callback_interfaces : Map[String, CallbackInterfaceDefinition]
  include_statements : Array[IncludesStatement]
} derive(Show, ToJson)

///|
/// Merges interface members and inheritance
fn PartialMerged::merge_interface(
  self : PartialMerged,
  name : String,
  members : Array[InterfaceMemberExtendedAttributes],
  inheritance : String?,
) -> Unit {
  match self.interfaces.get(name) {
    Some(current) => self.interfaces[name] = current.merge(members, inheritance)
    None =>
      self.interfaces[name] = PartialMergedInterface::new(
        name, members, inheritance,
      )
  }
}

///|
/// Merges mixin members
fn PartialMerged::merge_mixin(
  self : PartialMerged,
  name : String,
  members : Array[InterfaceMemberExtendedAttributes],
) -> Unit {
  match self.mixins.get(name) {
    Some(current) => self.mixins[name] = current.merge(members)
    None => self.mixins[name] = PartialMergedMixin::new(name, members)
  }
}

///|
/// Merges dictionary members and inheritance
fn PartialMerged::merge_dictionary(
  self : PartialMerged,
  name : String,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> Unit {
  match self.dictionaries.get(name) {
    Some(current) =>
      self.dictionaries[name] = current.merge(members, inheritance)
    None =>
      self.dictionaries[name] = PartialMergedDictionary::new(
        name, members, inheritance,
      )
  }
}

///|
/// Merges partial definitions from filtered IDL definitions
fn merge_partials(
  filtered : Array[DefinitionExtendedAttributes],
) -> PartialMerged {
  let partial_merged = PartialMerged::{
    interfaces: Map::new(),
    mixins: Map::new(),
    dictionaries: Map::new(),
    enums: Map::new(),
    typedefs: Map::new(),
    callback_functions: Map::new(),
    callback_interfaces: Map::new(),
    include_statements: Array::new(),
  }
  for def in filtered {
    match def.definition {
      CallbackInterface(cbif) =>
        partial_merged.callback_interfaces[cbif.name] = cbif
      CallbackFunction(cbf) => partial_merged.callback_functions[cbf.name] = cbf
      Typedef(td) => partial_merged.typedefs[td.name] = td
      Enum(enm) => partial_merged.enums[enm.name] = enm
      PartialDictionary(pdict) =>
        partial_merged.merge_dictionary(pdict.name, pdict.members, None)
      Dictionary(dict) =>
        partial_merged.merge_dictionary(
          dict.name,
          dict.members,
          dict.inheritance,
        )
      PartialMixin(pmxn) => partial_merged.merge_mixin(pmxn.name, pmxn.members)
      Mixin(mxn) => partial_merged.merge_mixin(mxn.name, mxn.members)
      PartialInterface(piface) =>
        partial_merged.merge_interface(piface.name, piface.members, None)
      Interface(iface) =>
        partial_merged.merge_interface(
          iface.name,
          iface.members,
          iface.inheritance,
        )
      Includes(inc) => partial_merged.include_statements.push(inc)
      PartialNamespace(_) => println("Partial namespace not supported")
      Namespace(_) => println("Namespace not supported")
    }
  }
  partial_merged
}
