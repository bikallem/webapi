///|
test "MergeVisitor merges interfaces, partials, and mixins correctly" {
  let visitor = MergeVisitor::new()
  let defs : Array[Definition] = [
    Interface({
      extended_attributes: [],
      name: "MyInterface",
      members: [
        Attribute({
          is_inherit: false,
          name: "textContent",
          type_: Nullable(DOMString),
          is_readonly: false,
          static_: false,
          extended_attributes: [],
        }),
      ],
      inheritance: None,
    }),
    PartialInterface({
      extended_attributes: [],
      name: "MyInterface",
      members: [
        Operation({
          extended_attributes: [],
          return_type: Identifier("Node"),
          name: Some("appendChild"),
          static_: false,
          arguments: [
            Argument::{
              extended_attributes: [],
              type_: Identifier("Element"),
              name: "newChild",
              optional: false,
              default_value: None,
              variadic: false,
            },
          ],
          special: None,
        }),
      ],
    }),
    Mixin({
      name: "MyInterface",
      extended_attributes: [],
      members: [
        Attribute({
          is_inherit: false,
          name: "textContent2",
          type_: Nullable(DOMString),
          is_readonly: false,
          static_: false,
          extended_attributes: [],
        }),
      ],
    }),
    PartialMixin({
      name: "MyInterface",
      extended_attributes: [],
      members: [
        Operation({
          extended_attributes: [],
          return_type: Identifier("void"),
          name: Some("doSomething"),
          static_: false,
          arguments: [],
          special: None,
        }),
      ],
    }),
  ]
  for def in defs {
    visitor.visit_definition(def)
  }
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
          "return_type": ["Identifier", "void"],
          "name": "doSomething",
          "arguments": [],
          "static_": false,
        },
      ],
    ],
  })
}
