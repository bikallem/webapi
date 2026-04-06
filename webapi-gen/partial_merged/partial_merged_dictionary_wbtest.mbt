///|
test "MergedDictionary::merge() combines members and inheritance" {
  let dict1 = PartialMergedDictionary::new("ElementInit", [], None, "")
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
    "",
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
    "specs": [""],
  })
}
