///|
test "MergeVisitor merges interfaces, partials, and mixins correctly" {
  let visitor = MergeVisitor::new()
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|partial interface MyInterface {
    #|  Node appendChild(Element newChild);
    #|};
    #|interface mixin MyInterface {
    #|  attribute DOMString? textContent2;
    #|};
    #|partial interface mixin MyInterface {
    #|  void doSomething();
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
