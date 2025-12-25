///|
test "PartialMergeVisitor merges interface and partial interface" {
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|partial interface MyInterface {
    #|  Node appendChild(Element newChild);
    #|};    
  let defs = @parser.parse(widl)
  let partial_merged = merge_partials(defs)
  @json.inspect(partial_merged, content={
    "interfaces": {
      "MyInterface": {
        "name": "MyInterface",
        "members": [
          {
            "extended_attributes": [],
            "interface_member": [
              "Attribute",
              {
                "type_": ["Nullable", "DOMString"],
                "name": "textContent",
                "is_readonly": false,
                "static_": false,
                "is_inherit": false,
              },
            ],
          },
          {
            "extended_attributes": [],
            "interface_member": [
              "RegularOperation",
              {
                "return_type": ["Identifier", "Node"],
                "name": "appendChild",
                "arguments": [
                  {
                    "extended_attributes": [],
                    "type_": {
                      "extended_attributes": [],
                      "type_": ["Identifier", "Element"],
                    },
                    "name": "newChild",
                    "optional": false,
                    "variadic": false,
                  },
                ],
                "static_": false,
              },
            ],
          },
        ],
        "specs": [],
      },
    },
    "mixins": {},
    "dictionaries": {},
    "enums": {},
    "typedefs": {},
    "callback_functions": {},
    "callback_interfaces": {},
    "include_statements": [],
  })
}

///|
test "PartialMergeVisitor merges mixin and partial mixin" {
  let widl : String =
    #|interface mixin MyMixin {
    #|  attribute DOMString? textContent2;
    #|};
    #|partial interface mixin MyMixin {
    #|  undefined doSomething();
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = merge_partials(defs)
  let merged_mixin = partial_merged.mixins["MyMixin"]
  @json.inspect(merged_mixin, content={
    "name": "MyMixin",
    "members": [
      {
        "extended_attributes": [],
        "interface_member": [
          "Attribute",
          {
            "type_": ["Nullable", "DOMString"],
            "name": "textContent2",
            "is_readonly": false,
            "static_": false,
            "is_inherit": false,
          },
        ],
      },
      {
        "extended_attributes": [],
        "interface_member": [
          "RegularOperation",
          {
            "return_type": "Undefined",
            "name": "doSomething",
            "arguments": [],
            "static_": false,
          },
        ],
      },
    ],
    "specs": [],
  })
}

///|
test "PartialMergeVisitor merges dictionary and partial dictionary" {
  let widl : String =
    #|dictionary EventInit {
    #|  required DOMString type;
    #|};
    #|partial dictionary EventInit {
    #|  boolean bubbles = false;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = merge_partials(defs)
  let merged = partial_merged.dictionaries["EventInit"]
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
        "default_value": ["ConstValue", ["Boolean", "false"]],
      },
    ],
    "specs": [],
  })
}

///|
test "PartialMergeVisitor merges dictionary with inheritance" {
  let widl : String =
    #|dictionary UIEventInit : EventInit {
    #|  Window view;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = merge_partials(defs)
  let merged = partial_merged.dictionaries["UIEventInit"]
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
    "specs": [],
  })
}

///|
test "PartialMergeVisitor empty_dictionary" {
  let widl : String =
    #|dictionary EmptyDict {
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = merge_partials(defs)
  let merged = partial_merged.dictionaries["EmptyDict"]
  @json.inspect(merged, content={
    "name": "EmptyDict",
    "members": [],
    "specs": [],
  })
}

///|

///|
test "PartialMergeVisitor merges interfaces, mixins, dictionaries, enums, callbacks, and includes" (
  t : @test.Test,
) {
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|partial interface MyInterface {
    #|  Node appendChild(Element newChild);
    #|};
    #|interface mixin MyMixin {
    #|  attribute DOMString? textContent2;
    #|};
    #|partial interface mixin MyMixin {
    #|  undefined doSomething();
    #|};
    #|dictionary EventInit : Event {
    #|  required DOMString type;
    #|};
    #|partial dictionary EventInit {
    #|  boolean bubbles = false;
    #|};
    #|enum MyEnum {
    #|  "value1",
    #|  "value2"
    #|};
    #|callback MyCallback = undefined (DOMString arg);
    #|callback interface MyCallbackInterface {
    #|  undefined onEvent(Event e);
    #|};
    #|MyInterface includes MyMixin;
  let defs = @parser.parse(widl)
  let partial_merged = merge_partials(defs)
  t.write(partial_merged.to_json().stringify(indent=2))
  t.snapshot(filename="partial_merge_visitor_snapshot.json")
}
