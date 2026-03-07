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

///|
test "MergedDictionary::merge() combines members and inheritance" {
  let dict1 = PartialMergedDictionary::new("ElementInit", [], None, None)
  let _dict2 = dict1.merge(
    [
      @parser.DictionaryMember::{
        extended_attributes: [],
        type_: @parser.Type::Identifier("DOMString"),
        name: "id",
        required: false,
        default_value: Some(@parser.DefaultValue::String("")),
      },
    ],
    Some("NodeInit"),
    None,
  )
  json_inspect(_dict2, content={
    "name": "ElementInit",
    "members": [
      {
        "extended_attributes": [],
        "type_": ["Identifier", "DOMString"],
        "name": "id",
        "required": false,
        "default_value": ["String", ""],
      },
    ],
    "inheritance": "NodeInit",
    "specs": [],
  })
}
