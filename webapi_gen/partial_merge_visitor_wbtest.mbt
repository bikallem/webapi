///|
test "MergedInterface::new() creates interface with defaults" {
  let iface = PartilMergedInterfaceIR::new("Element", [], Some("Node"))
  inspect(iface.name, content="Element")
  inspect(
    iface.inheritance,
    content=(
      #|Some("Node")
    ),
  )
}

///|
test "MergedInterface::merge() combines members and inheritance" {
  let iface1 = PartilMergedInterfaceIR::new(
    "Element",
    [
      Attribute({
        is_inherit: false,
        name: "id",
        type_: Type::Identifier("DOMString"),
        is_readonly: false,
        static_: false,
        extended_attributes: [],
      }),
    ],
    None,
  )
  let iface2 = iface1.merge(
    [
      Operation({
        extended_attributes: [],
        return_type: Type::Identifier("undefined"),
        name: Some("focus"),
        static_: false,
        arguments: [],
        special: None,
      }),
    ],
    Some("HTMLElement"),
  )
  @json.inspect(iface2, content={
    "name": "Element",
    "members": [
      [
        "Attribute",
        {
          "extended_attributes": [],
          "type_": ["Identifier", "DOMString"],
          "name": "id",
          "is_readonly": false,
          "static_": false,
          "is_inherit": false,
        },
      ],
      [
        "Operation",
        {
          "extended_attributes": [],
          "return_type": ["Identifier", "undefined"],
          "name": "focus",
          "arguments": [],
          "static_": false,
        },
      ],
    ],
    "inheritance": "HTMLElement",
  })
}

///|
test "MergedInterface::merge() retains existing inheritance if none provided" {
  let iface1 = PartilMergedInterfaceIR::new("Element", [], Some("Node"))
  let iface2 = iface1.merge(
    [
      Operation({
        extended_attributes: [],
        return_type: Type::Identifier("void"),
        name: Some("focus"),
        static_: false,
        arguments: [],
        special: None,
      }),
    ],
    None,
  )
  @json.inspect(iface2, content={
    "name": "Element",
    "members": [
      [
        "Operation",
        {
          "extended_attributes": [],
          "return_type": ["Identifier", "void"],
          "name": "focus",
          "arguments": [],
          "static_": false,
        },
      ],
    ],
    "inheritance": "Node",
  })
}

///|
test "MergedDictionary::merge() combines members and inheritance" {
  let dict1 = PartialMergedDictionaryIR::new("ElementInit", [], None)
  let _dict2 = dict1.merge(
    [
      DictionaryMember::{
        extended_attributes: [],
        type_: Type::Identifier("DOMString"),
        name: "id",
        required: false,
        default_value: Some(@parser.DefaultValue::String("")),
      },
    ],
    Some("NodeInit"),
  )
  @json.inspect(_dict2, content={
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
  })
}

///|
test "TypeRegistry::contains checks all type categories" {
  let reg : TypeRegistry = {
    interface_names: @hashset.from_array(["Element"]),
    dictionary_names: @hashset.from_array(["EventInit"]),
    enum_names: @hashset.from_array(["ScrollBehaviour"]),
    typedef_names: @hashset.from_array(["DOMString"]),
    callback_names: @hashset.from_array(["EventListener"]),
  }
  inspect(reg.contains("Element"), content="true")
  inspect(reg.contains("EventInit"), content="true")
  inspect(reg.contains("ScrollBehaviour"), content="true")
  inspect(reg.contains("Unknown"), content="false")
  inspect(reg.is_interface("Element"), content="true")
  inspect(reg.is_dictionary("EventInit"), content="true")
  inspect(reg.is_enum("ScrollBehaviour"), content="true")
}

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
    #|  undefined doSomething();
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
          "return_type": "Undefined",
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
test "PartialMergeVisitor merges interfaces, mixins, dictionaries, enums, callbacks, and includes" (
  t : @test.Test,
) {
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
  visitor.visit(defs)
  t.write(visitor.to_json().stringify(indent=2))
  t.snapshot(filename="partial_merge_visitor_snapshot.json")
}
