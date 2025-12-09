///|
test "PartialMergeVisitor merges interface and partial interface" {
  let visitor = PartialMergeVisitor::new()
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
test "PartialMergeVisitor merges mixin and partial mixin" {
  let visitor = PartialMergeVisitor::new()
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
test "PartialMergeVisitor merges dictionary and partial dictionary" {
  let visitor = PartialMergeVisitor::new()
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
test "PartialMergeVisitor merges dictionary with inheritance" {
  let visitor = PartialMergeVisitor::new()
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
test "PartialMergeVisitor empty_dictionary" {
  let visitor = PartialMergeVisitor::new()
  let widl : String =
    #|dictionary EmptyDict {
    #|};
  let defs = @parser.parse(widl)
  visitor.visit(defs)
  let merged = visitor.dictionaries["EmptyDict"]
  @json.inspect(merged, content={ "name": "EmptyDict", "members": [] })
}

///|

///|
test "PartialMergeVisitor merges interfaces, mixins, dictionaries, enums, callbacks, and includes" {
  let visitor = PartialMergeVisitor::new()
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
    #|  void doSomething();
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
    #|callback MyCallback = void (DOMString arg);
    #|callback interface MyCallbackInterface {
    #|  void onEvent(Event e);
    #|};
    #|MyInterface includes MyMixin;
  let defs = @parser.parse(widl)
  visitor.visit(defs)
  @json.inspect(visitor, content={
    "interfaces": {
      "MyInterface": {
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
      },
    },
    "mixins": {
      "MyMixin": {
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
      },
    },
    "dictionaries": {
      "EventInit": {
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
        "inheritance": "Event",
      },
    },
    "enums": {
      "MyEnum": {
        "extended_attributes": [],
        "name": "MyEnum",
        "values": ["\"value1\"", "\"value2\""],
      },
    },
    "typedefs": {},
    "callback_functions": {
      "MyCallback": {
        "extended_attributes": [],
        "name": "MyCallback",
        "return_type": "Void",
        "arguments": [
          {
            "extended_attributes": [],
            "type_": "DOMString",
            "name": "arg",
            "optional": false,
            "variadic": false,
          },
        ],
      },
    },
    "callback_interfaces": {
      "MyCallbackInterface": {
        "extended_attributes": [],
        "name": "MyCallbackInterface",
        "members": [
          [
            "Operation",
            {
              "extended_attributes": [],
              "return_type": "Void",
              "name": "onEvent",
              "arguments": [
                {
                  "extended_attributes": [],
                  "type_": ["Identifier", "Event"],
                  "name": "e",
                  "optional": false,
                  "variadic": false,
                },
              ],
              "static_": false,
            },
          ],
        ],
      },
    },
    "includes": [
      {
        "extended_attributes": [],
        "interface_name": "MyInterface",
        "mixin_name": "MyMixin",
      },
    ],
  })
}
