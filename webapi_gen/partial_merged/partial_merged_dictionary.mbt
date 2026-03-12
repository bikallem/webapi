///|
/// Merged Dictionary with all partials combined.
pub struct PartialMergedDictionary {
  name : String
  members : Array[@parser.DictionaryMember]
  inheritance : String?
  specs : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
fn PartialMergedDictionary::new(
  name : String,
  members : Array[@parser.DictionaryMember],
  inheritance : String?,
  spec : String?,
) -> PartialMergedDictionary {
  { name, inheritance, members, specs: hashset_from_optional(spec) }
}

///|
fn PartialMergedDictionary::merge(
  self : PartialMergedDictionary,
  members : Array[@parser.DictionaryMember],
  inheritance : String?,
  spec : String?,
) -> PartialMergedDictionary {
  let inheritance = match inheritance {
    None => self.inheritance
    Some(_) => inheritance
  }
  let specs = match spec {
    Some(s) => self.specs.union(@hashset.HashSet::from_array([s]))
    None => self.specs
  }
  { ..self, members: self.members + members, inheritance, specs }
}
