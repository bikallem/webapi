///|
/// Merged Dictionary with all partials combined.
pub struct PartialMergedDictionary {
  name : String
  members : Array[@parser.DictionaryMember]
  inheritance : String?
  specs : @hashset.HashSet[String]
} derive(Debug, ToJson)

///|
fn PartialMergedDictionary::new(
  name : String,
  members : Array[@parser.DictionaryMember],
  inheritance : String?,
  spec : String,
) -> PartialMergedDictionary {
  let specs = @hashset.HashSet::new()
  specs.add(spec)
  { name, inheritance, members, specs }
}

///|
fn PartialMergedDictionary::merge(
  self : PartialMergedDictionary,
  members : Array[@parser.DictionaryMember],
  inheritance : String?,
  spec : String,
) -> PartialMergedDictionary {
  let inheritance = match inheritance {
    None => self.inheritance
    Some(_) => inheritance
  }
  self.specs.add(spec)
  { ..self, members: self.members + members, inheritance }
}
