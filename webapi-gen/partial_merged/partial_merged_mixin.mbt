///|
/// Merged mixin IR with all partials combined.
pub struct PartialMergedMixin {
  name : String
  members : Array[@parser.InterfaceMemberExtendedAttributes]
  specs : @hashset.HashSet[String]
} derive(Debug, ToJson)

///|
fn PartialMergedMixin::new(
  name : String,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  spec : String,
) -> PartialMergedMixin {
  let specs = @hashset.HashSet::new()
  specs.add(spec)
  { name, members, specs }
}

///|
fn PartialMergedMixin::merge(
  self : PartialMergedMixin,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  spec : String,
) -> PartialMergedMixin {
  self.specs.add(spec)
  { ..self, members: self.members + members }
}
