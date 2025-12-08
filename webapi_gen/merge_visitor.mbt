///|
/// Visitor that merges partial interfaces, mixins, and dictionaries into their
/// primary definitions.
struct MergeVisitor {
  interfaces : Map[String, MergedInterfaceIR]
  dictionaries : Map[String, MergedDictionary]
}

///|
fn MergeVisitor::new() -> MergeVisitor {
  MergeVisitor::{ interfaces: Map::new(), dictionaries: Map::new() }
}

///|
fn MergeVisitor::merge(
  self : MergeVisitor,
  name : String,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> Unit {
  match self.interfaces.get(name) {
    Some(current) => self.interfaces[name] = current.merge(members, inheritance)
    None =>
      self.interfaces[name] = MergedInterfaceIR::new(name, members, inheritance)
  }
}

///|
impl DefinitionVisitor for MergeVisitor with visit_interface(self, iface) -> Unit {
  self.merge(iface.name, iface.members, iface.inheritance)
}

///|
impl DefinitionVisitor for MergeVisitor with visit_partial_interface(
  self,
  piface,
) -> Unit {
  self.merge(piface.name, piface.members, None)
}

///|
impl DefinitionVisitor for MergeVisitor with visit_mixin(self, mxn) -> Unit {
  self.merge(mxn.name, mxn.members, None)
}

///|
impl DefinitionVisitor for MergeVisitor with visit_partial_mixin(self, pmxn) -> Unit {
  self.merge(pmxn.name, pmxn.members, None)
}
