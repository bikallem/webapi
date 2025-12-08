///|
test "MergeVisitor correctly merges dictionaries" {
  let visitor = MergeVisitor::new()
  let defs : Array[Definition] = [
    Dictionary({
      extended_attributes: [],
      name: "EventInit",
      inheritance: None,
      members: [
        DictionaryMember::{
          extended_attributes: [],
          type_: Type::Identifier("DOMString"),
          name: "type",
          required: true,
          default_value: None,
        },
      ],
    }),
    PartialDictionary({
      extended_attributes: [],
      name: "EventInit",
      members: [
        DictionaryMember::{
          extended_attributes: [],
          type_: Type::Identifier("Bool"),
          name: "bubbles",
          required: false,
          default_value: Some(DefaultValue::ConstValue(Boolean(false))),
        },
      ],
    }),
  ]
  visitor.visit_definitions(defs)
  let merged = visitor.dictionaries["EventInit"]
  @json.inspect(merged, content={
    "name": "EventInit",
    "members": [
      {
        "extended_attributes": [],
        "type_": ["Identifier", "DOMString"],
        "name": "type",
        "required": true,
      },
      {
        "extended_attributes": [],
        "type_": ["Identifier", "Bool"],
        "name": "bubbles",
        "required": false,
        "default_value": ["ConstValue", ["Boolean", false]],
      },
    ],
  })
}

///|
test "MergeVisitor/dictionary_inheritance" {
  let visitor = MergeVisitor::new()
  let defs : Array[Definition] = [
    Dictionary({
      extended_attributes: [],
      name: "UIEventInit",
      inheritance: Some("EventInit"),
      members: [
        DictionaryMember::{
          extended_attributes: [],
          type_: Type::Identifier("Window"),
          name: "view",
          required: false,
          default_value: None,
        },
      ],
    }),
  ]
  visitor.visit_definitions(defs)
  let merged = visitor.dictionaries["UIEventInit"]
  @json.inspect(merged, content={
    "name": "UIEventInit",
    "inheritance": "EventInit",
    "members": [
      {
        "extended_attributes": [],
        "type_": ["Identifier", "Window"],
        "name": "view",
        "required": false,
      },
    ],
  })
}

///|
test "MergeVisitor/empty_dictionary" {
  let visitor = MergeVisitor::new()
  let defs : Array[Definition] = [
    Dictionary({
      extended_attributes: [],
      name: "EmptyDict",
      inheritance: None,
      members: [],
    }),
  ]
  visitor.visit_definitions(defs)
  let merged = visitor.dictionaries["EmptyDict"]
  @json.inspect(merged, content={ "name": "EmptyDict", "members": [] })
}
