///|
test "MergeVisitor merges interfaces, partials" {
  let visitor = MergeVisitor::new()
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|partial interface MyInterface {
    #|  Node appendChild(Element newChild);
    #|};    
  let defs = @parser.parse(widl)
  visitor.visit(defs)
  let merged = visitor.interfaces["MyInterface"]
  @json.inspect(merged, content={
    "name": "MyInterface",
    "members": [
      [
        "Attribute",
        {
          "extended_attributes": [],
          "type_": ["Nullable", "DOMString"],
          "name": "textContent",
          "is_readonly": false,
          "static_": false,
          "is_inherit": false,
        },
      ],
      [
        "Operation",
        {
          "extended_attributes": [],
          "return_type": ["Identifier", "Node"],
          "name": "appendChild",
          "arguments": [
            {
              "extended_attributes": [],
              "type_": ["Identifier", "Element"],
              "name": "newChild",
              "optional": false,
              "variadic": false,
            },
          ],
          "static_": false,
        },
      ],
    ],
  })
}

///|
test "PartialMergeVisitor merges mixins and partial mixins" {
  let visitor = MergeVisitor::new()
  let widl : String =
    #|interface mixin MyMixin {
    #|  attribute DOMString? textContent2;
    #|};
    #|partial interface mixin MyMixin {
    #|  void doSomething();
    #|};
  let defs = @parser.parse(widl)
  visitor.visit(defs)
  let merged_mixin = visitor.mixins["MyMixin"]
  @json.inspect(merged_mixin, content={
    "name": "MyMixin",
    "members": [
      [
        "Attribute",
        {
          "extended_attributes": [],
          "type_": ["Nullable", "DOMString"],
          "name": "textContent2",
          "is_readonly": false,
          "static_": false,
          "is_inherit": false,
        },
      ],
      [
        "Operation",
        {
          "extended_attributes": [],
          "return_type": "Void",
          "name": "doSomething",
          "arguments": [],
          "static_": false,
        },
      ],
    ],
  })
}

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
  visitor.visit(defs)
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
  visitor.visit(defs)
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
  visitor.visit(defs)
  let merged = visitor.dictionaries["EmptyDict"]
  @json.inspect(merged, content={ "name": "EmptyDict", "members": [] })
}
