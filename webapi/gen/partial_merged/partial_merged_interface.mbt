///|
/// Merged interface IR with all partials combined.
pub struct PartialMergedInterface {
  name : String
  members : Array[@parser.InterfaceMemberExtendedAttributes]
  inheritance : String?
  specs : @hashset.HashSet[String]
} derive(Debug, ToJson)

///|
fn PartialMergedInterface::new(
  name : String,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  inheritance : String?,
  specs : @hashset.HashSet[String],
) -> PartialMergedInterface {
  { name, inheritance, members, specs }
}

///|
pub fn PartialMergedInterface::merge(
  self : PartialMergedInterface,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  inheritance : String?,
  specs : @hashset.HashSet[String],
) -> PartialMergedInterface {
  let inheritance = match inheritance {
    Some(_) => inheritance
    None => self.inheritance
  }
  let specs = self.specs.union(specs)
  { ..self, members: self.members + members, inheritance, specs }
}
