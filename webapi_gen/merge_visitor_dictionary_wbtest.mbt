///|
test "MergeVisitor correctly merges dictionaries" {
  let visitor = MergeVisitor::new()
  let widl : String =
    #|dictionary EventInit {
    #|  required DOMString type;
    #|};
    #|partial dictionary EventInit {
    #|  boolean bubbles = false;
    #|};
  let defs = @parser.parse(widl)
  visitor.visit_definitions(defs)
  let merged = visitor.dictionaries["EventInit"]
  @json.inspect(merged, content={
    "name": "EventInit",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "type",
        "required": true,
      },
      {
        "extended_attributes": [],
        "type_": "Boolean",
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
  let widl : String =
    #|dictionary UIEventInit : EventInit {
    #|  Window view;
    #|};
  let defs = @parser.parse(widl)
  visitor.visit_definitions(defs)
  let merged = visitor.dictionaries["UIEventInit"]
  @json.inspect(merged, content={
    "name": "UIEventInit",
    "members": [
      {
        "extended_attributes": [],
        "type_": ["Identifier", "Window"],
        "name": "view",
        "required": false,
      },
    ],
    "inheritance": "EventInit",
  })
}

///|
test "MergeVisitor/empty_dictionary" {
  let visitor = MergeVisitor::new()
  let widl : String =
    #|dictionary EmptyDict {
    #|};
  let defs = @parser.parse(widl)
  visitor.visit_definitions(defs)
  let merged = visitor.dictionaries["EmptyDict"]
  @json.inspect(merged, content={ "name": "EmptyDict", "members": [] })
}
