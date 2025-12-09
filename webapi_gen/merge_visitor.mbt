///|
/// Visitor that merges partial interfaces, mixins, and dictionaries into their
/// primary definitions.
struct MergeVisitor {
  interfaces : Map[String, MergedInterfaceIR]
  mixins : Map[String, MergedInterfaceIR]
  dictionaries : Map[String, MergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callback_functions : Map[String, CallbackFunctionDefinition]
  callback_interfaces : Map[String, CallbackInterfaceDefinition]
  includes : Array[IncludesStatement]
}

///|
fn MergeVisitor::new() -> MergeVisitor {
  MergeVisitor::{
    interfaces: Map::new(),
    mixins: Map::new(),
    dictionaries: Map::new(),
    enums: Map::new(),
    typedefs: Map::new(),
    callback_functions: Map::new(),
    callback_interfaces: Map::new(),
    includes: Array::new(),
  }
}

///|
fn MergeVisitor::merge_interface(
  map : Map[String, MergedInterfaceIR],
  name : String,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> Unit {
  match map.get(name) {
    Some(current) => map[name] = current.merge(members, inheritance)
    None => map[name] = MergedInterfaceIR::new(name, members, inheritance)
  }
}

//=============================================================================
// merge interface
//=============================================================================

///|
impl WebIdlVisitor for MergeVisitor with visit_interface(self, iface) -> Unit {
  MergeVisitor::merge_interface(
    self.interfaces,
    iface.name,
    iface.members,
    iface.inheritance,
  )
}

///|
impl WebIdlVisitor for MergeVisitor with visit_partial_interface(self, piface) -> Unit {
  MergeVisitor::merge_interface(
    self.interfaces,
    piface.name,
    piface.members,
    None,
  )
}

//=============================================================================
// merge mixin
//=============================================================================

///|
impl WebIdlVisitor for MergeVisitor with visit_mixin(self, mxn) -> Unit {
  MergeVisitor::merge_interface(self.mixins, mxn.name, mxn.members, None)
}

///|
impl WebIdlVisitor for MergeVisitor with visit_partial_mixin(self, pmxn) -> Unit {
  MergeVisitor::merge_interface(self.mixins, pmxn.name, pmxn.members, None)
}

//=============================================================================
// merge dictionary
//=============================================================================

///|
fn MergeVisitor::merge_dictionary(
  self : MergeVisitor,
  name : String,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> Unit {
  match self.dictionaries.get(name) {
    Some(current) =>
      self.dictionaries[name] = current.merge(members, inheritance)
    None =>
      self.dictionaries[name] = MergedDictionaryIR::new(
        name, members, inheritance,
      )
  }
}

///|
impl WebIdlVisitor for MergeVisitor with visit_dictionary(self, dict) -> Unit {
  self.merge_dictionary(dict.name, dict.members, dict.inheritance)
}

///|
impl WebIdlVisitor for MergeVisitor with visit_partial_dictionary(self, pdict) -> Unit {
  self.merge_dictionary(pdict.name, pdict.members, None)
}

//=============================================================================
// merge other definitions
//=============================================================================

///|
impl WebIdlVisitor for MergeVisitor with visit_enum(self, enm) -> Unit {
  self.enums[enm.name] = enm
}

///|
impl WebIdlVisitor for MergeVisitor with visit_typedef(self, td) -> Unit {
  self.typedefs[td.name] = td
}

///|
impl WebIdlVisitor for MergeVisitor with visit_callback_function(self, cbf) -> Unit {
  self.callback_functions[cbf.name] = cbf
}

///|
impl WebIdlVisitor for MergeVisitor with visit_callback_interface(self, cbi) -> Unit {
  self.callback_interfaces[cbi.name] = cbi
}

///|
impl WebIdlVisitor for MergeVisitor with visit_include_statements(self, inc) -> Unit {
  self.includes.push(inc)
}
