///|
/// Merged mixin IR with all partials combined.
pub struct PartialMergedMixin {
  name : String
  members : Array[@parser.InterfaceMemberExtendedAttributes]
} derive(Show, ToJson)

///|
fn PartialMergedMixin::new(
  name : String,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
) -> PartialMergedMixin {
  PartialMergedMixin::{ name, members }
}

///|
fn PartialMergedMixin::merge(
  self : PartialMergedMixin,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
) -> PartialMergedMixin {
  { ..self, members: self.members + members }
}
