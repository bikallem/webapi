///|
/// Merged interface IR with all partials and mixin members combined
struct PartialMergedInterfaceIR {
  name : String
  members : Array[InterfaceMemberExtendedAttributes]
  inheritance : String?
} derive(Show, ToJson)

///|
fn PartialMergedInterfaceIR::new(
  name : String,
  members : Array[InterfaceMemberExtendedAttributes],
  inheritance : String?,
) -> PartialMergedInterfaceIR {
  PartialMergedInterfaceIR::{ name, inheritance, members }
}

///|
fn PartialMergedInterfaceIR::merge(
  self : PartialMergedInterfaceIR,
  members : Array[InterfaceMemberExtendedAttributes],
  inheritance : String?,
) -> PartialMergedInterfaceIR {
  let inheritance = match inheritance {
    Some(_) => inheritance
    None => self.inheritance
  }
  { ..self, members: self.members + members, inheritance }
}

///|
/// Merged mixin IR with all partials combined.
struct PartialMergedMixinIR {
  name : String
  members : Array[InterfaceMemberExtendedAttributes]
} derive(Show, ToJson)

///|
fn PartialMergedMixinIR::new(
  name : String,
  members : Array[InterfaceMemberExtendedAttributes],
) -> PartialMergedMixinIR {
  PartialMergedMixinIR::{ name, members }
}

///|
fn PartialMergedMixinIR::merge(
  self : PartialMergedMixinIR,
  members : Array[InterfaceMemberExtendedAttributes],
) -> PartialMergedMixinIR {
  { ..self, members: self.members + members }
}

///|
/// Merged Dictionary with all partials combined.
struct PartialMergedDictionaryIR {
  name : String
  members : Array[DictionaryMember]
  inheritance : String?
} derive(Show, ToJson)

///|
fn PartialMergedDictionaryIR::new(
  name : String,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> PartialMergedDictionaryIR {
  PartialMergedDictionaryIR::{ name, inheritance, members }
}

///|
fn PartialMergedDictionaryIR::merge(
  self : PartialMergedDictionaryIR,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> PartialMergedDictionaryIR {
  let inheritance = match inheritance {
    None => self.inheritance
    Some(_) => inheritance
  }
  { ..self, members: self.members + members, inheritance }
}

///|
/// Visitor that merges partial interfaces, mixins, and dictionaries into their
/// primary definitions.
struct PartialMergeVisitor {
  interfaces : Map[String, PartialMergedInterfaceIR]
  mixins : Map[String, PartialMergedMixinIR]
  dictionaries : Map[String, PartialMergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callback_functions : Map[String, CallbackFunctionDefinition]
  callback_interfaces : Map[String, CallbackInterfaceDefinition]
  include_statements : Array[IncludesStatement]
} derive(Show, ToJson)

///|
fn PartialMergeVisitor::new() -> PartialMergeVisitor {
  PartialMergeVisitor::{
    interfaces: Map::new(),
    mixins: Map::new(),
    dictionaries: Map::new(),
    enums: Map::new(),
    typedefs: Map::new(),
    callback_functions: Map::new(),
    callback_interfaces: Map::new(),
    include_statements: Array::new(),
  }
}

///|
fn PartialMergeVisitor::merge_interface(
  self : PartialMergeVisitor,
  name : String,
  members : Array[InterfaceMemberExtendedAttributes],
  inheritance : String?,
) -> Unit {
  match self.interfaces.get(name) {
    Some(current) => self.interfaces[name] = current.merge(members, inheritance)
    None =>
      self.interfaces[name] = PartialMergedInterfaceIR::new(
        name, members, inheritance,
      )
  }
}

//=============================================================================
// merge interface
//=============================================================================

///|
fn PartialMergeVisitor::merge_mixin(
  self : PartialMergeVisitor,
  name : String,
  members : Array[InterfaceMemberExtendedAttributes],
) -> Unit {
  match self.mixins.get(name) {
    Some(current) => self.mixins[name] = current.merge(members)
    None => self.mixins[name] = PartialMergedMixinIR::new(name, members)
  }
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_interface(self, iface) -> Unit {
  self.merge_interface(iface.name, iface.members, iface.inheritance)
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_partial_interface(
  self,
  piface,
) -> Unit {
  self..merge_interface(piface.name, piface.members, None)
}

//=============================================================================
// merge mixin
//=============================================================================

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_mixin(self, mxn) -> Unit {
  self..merge_mixin(mxn.name, mxn.members)
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_partial_mixin(self, pmxn) -> Unit {
  self..merge_mixin(pmxn.name, pmxn.members)
}

//=============================================================================
// merge dictionary
//=============================================================================

///|
fn PartialMergeVisitor::merge_dictionary(
  self : PartialMergeVisitor,
  name : String,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> Unit {
  match self.dictionaries.get(name) {
    Some(current) =>
      self.dictionaries[name] = current.merge(members, inheritance)
    None =>
      self.dictionaries[name] = PartialMergedDictionaryIR::new(
        name, members, inheritance,
      )
  }
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_dictionary(self, dict) -> Unit {
  self.merge_dictionary(dict.name, dict.members, dict.inheritance)
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_partial_dictionary(
  self,
  pdict,
) -> Unit {
  self.merge_dictionary(pdict.name, pdict.members, None)
}

//=============================================================================
// merge other definitions
//=============================================================================

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_enum(self, enm) -> Unit {
  self.enums[enm.name] = enm
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_typedef(self, td) -> Unit {
  self.typedefs[td.name] = td
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_callback_function(
  self,
  cbf,
) -> Unit {
  self.callback_functions[cbf.name] = cbf
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_callback_interface(
  self,
  cbi,
) -> Unit {
  self.callback_interfaces[cbi.name] = cbi
}

///|
impl WebIdlVisitor for PartialMergeVisitor with visit_include_statements(
  self,
  inc,
) -> Unit {
  self.include_statements.push(inc)
}
