///|
fn hashset_from_optional(spec : String?) -> @hashset.HashSet[String] {
  match spec {
    Some(s) => @hashset.HashSet::from_array([s])
    None => @hashset.HashSet::new()
  }
}

///|
/// Merged namespace with members from all partial namespace definitions.
pub(all) struct PartialMergedNamespace {
  name : String
  members : Array[@parser.NamespaceMemberExtendedAttributes]
  specs : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
/// Visitor that merges partial interfaces, mixins, and dictionaries into their
/// primary definitions.
pub struct PartialMerged {
  interfaces : Map[String, PartialMergedInterface]
  mixins : Map[String, PartialMergedMixin]
  dictionaries : Map[String, PartialMergedDictionary]
  namespaces : Map[String, PartialMergedNamespace]
  enums : Map[String, @parser.EnumDefinition]
  typedefs : Map[String, @parser.TypedefDefinition]
  callback_functions : Map[String, @parser.CallbackFunctionDefinition]
  callback_interfaces : Map[String, @parser.CallbackInterfaceDefinition]
  include_statements : Array[@parser.IncludesStatement]
} derive(Show, ToJson)

///|
/// Merges interface members and inheritance
fn PartialMerged::merge_interface(
  self : PartialMerged,
  name : String,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  inheritance : String?,
  specs : @hashset.HashSet[String],
) -> Unit {
  match self.interfaces.get(name) {
    Some(current) =>
      self.interfaces[name] = current.merge(members, inheritance, specs)
    None =>
      self.interfaces[name] = PartialMergedInterface::new(
        name, members, inheritance, specs,
      )
  }
}

///|
/// Merges mixin members
fn PartialMerged::merge_mixin(
  self : PartialMerged,
  name : String,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  spec : String?,
) -> Unit {
  match self.mixins.get(name) {
    Some(current) => self.mixins[name] = current.merge(members, spec)
    None => self.mixins[name] = PartialMergedMixin::new(name, members, spec)
  }
}

///|
/// Merges dictionary members and inheritance
fn PartialMerged::merge_dictionary(
  self : PartialMerged,
  name : String,
  members : Array[@parser.DictionaryMember],
  inheritance : String?,
  spec : String?,
) -> Unit {
  match self.dictionaries.get(name) {
    Some(current) =>
      self.dictionaries[name] = current.merge(members, inheritance, spec)
    None =>
      self.dictionaries[name] = PartialMergedDictionary::new(
        name, members, inheritance, spec,
      )
  }
}

///|
/// Merges namespace members
fn PartialMerged::merge_namespace(
  self : PartialMerged,
  name : String,
  members : Array[@parser.NamespaceMemberExtendedAttributes],
  specs : @hashset.HashSet[String],
) -> Unit {
  match self.namespaces.get(name) {
    Some(current) =>
      self.namespaces[name] = PartialMergedNamespace::{
        name,
        members: current.members + members,
        specs: current.specs.union(specs),
      }
    None =>
      self.namespaces[name] = PartialMergedNamespace::{ name, members, specs }
  }
}

///|
/// Merges partial definitions from filtered IDL definitions
pub fn merge_partials(
  filtered : Array[@parser.DefinitionExtendedAttributes],
) -> PartialMerged {
  let partial_merged = PartialMerged::{
    interfaces: Map::new(),
    mixins: Map::new(),
    dictionaries: Map::new(),
    namespaces: Map::new(),
    enums: Map::new(),
    typedefs: Map::new(),
    callback_functions: Map::new(),
    callback_interfaces: Map::new(),
    include_statements: Array::new(),
  }
  for def in filtered {
    match def.definition {
      CallbackInterface(cbif) => {
        partial_merged.callback_interfaces[cbif.name] = cbif
        cbif.spec = def.spec
      }
      CallbackFunction(cbf) => {
        partial_merged.callback_functions[cbf.name] = cbf
        cbf.spec = def.spec
      }
      Typedef(td) => {
        partial_merged.typedefs[td.name] = td
        td.spec = def.spec
      }
      Enum(enm) => {
        partial_merged.enums[enm.name] = enm
        enm.spec = def.spec
      }
      PartialDictionary(pdict) =>
        partial_merged.merge_dictionary(
          pdict.name,
          pdict.members,
          None,
          def.spec,
        )
      Dictionary(dict) =>
        partial_merged.merge_dictionary(
          dict.name,
          dict.members,
          dict.inheritance,
          def.spec,
        )
      PartialMixin(pmxn) =>
        partial_merged.merge_mixin(pmxn.name, pmxn.members, def.spec)
      Mixin(mxn) => partial_merged.merge_mixin(mxn.name, mxn.members, def.spec)
      PartialInterface(piface) =>
        partial_merged.merge_interface(
          piface.name,
          piface.members,
          None,
          hashset_from_optional(def.spec),
        )
      Interface(iface) =>
        partial_merged.merge_interface(
          iface.name,
          iface.members,
          iface.inheritance,
          hashset_from_optional(def.spec),
        )
      Includes(inc) => partial_merged.include_statements.push(inc)
      PartialNamespace(pns) =>
        partial_merged.merge_namespace(
          pns.name,
          pns.members,
          hashset_from_optional(def.spec),
        )
      Namespace(ns) =>
        partial_merged.merge_namespace(
          ns.name,
          ns.members,
          hashset_from_optional(def.spec),
        )
    }
  }
  partial_merged
}
