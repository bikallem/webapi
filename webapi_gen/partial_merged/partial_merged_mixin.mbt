///|
/// Merged mixin IR with all partials combined.
pub struct PartialMergedMixin {
  name : String
  members : Array[@parser.InterfaceMemberExtendedAttributes]
  specs : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
fn PartialMergedMixin::new(
  name : String,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  spec : String?,
) -> PartialMergedMixin {
  { name, members, specs: hashset_from_optional(spec) }
}

///|
fn PartialMergedMixin::merge(
  self : PartialMergedMixin,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  spec : String?,
) -> PartialMergedMixin {
  match spec {
    Some(s) => self.specs.add(s)
    None => ()
  }
  { ..self, members: self.members + members }
}
