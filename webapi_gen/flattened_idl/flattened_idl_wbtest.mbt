///|
test "flatten merges dictionary inheritance" {
  let widl : String =
    #|dictionary BaseDict {
    #|  DOMString baseProp;
    #|  boolean bubbles = false;
    #|};
    #|dictionary ChildDict : BaseDict {
    #|  DOMString childProp;
    #|  boolean property1 = false;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = @partial_merged.merge_partials(defs)
  let flattened_idl = flatten(partial_merged, ignore)
  let flattened_dict = flattened_idl.dictionaries["ChildDict"]
  @json.inspect(flattened_dict, content={
    "name": "ChildDict",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "baseProp",
        "required": false,
      },
      {
        "extended_attributes": [],
        "type_": "Boolean",
        "name": "bubbles",
        "required": false,
        "default_value": ["ConstValue", ["Boolean", "false"]],
      },
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "childProp",
        "required": false,
      },
      {
        "extended_attributes": [],
        "type_": "Boolean",
        "name": "property1",
        "required": false,
        "default_value": ["ConstValue", ["Boolean", "false"]],
      },
    ],
    "specs": [],
  })
}

///|
test "flatten handles dictionary without inheritance" {
  let widl : String =
    #|dictionary SimpleDict {
    #|  DOMString simpleProp;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = @partial_merged.merge_partials(defs)
  let flattened_idl = flatten(partial_merged, ignore)
  let flattened_dict = flattened_idl.dictionaries["SimpleDict"]
  @json.inspect(flattened_dict, content={
    "name": "SimpleDict",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "simpleProp",
        "required": false,
      },
    ],
    "specs": [],
  })
}

///|
test "panic: flatten aborts when parent dictionary is missing" {
  let widl : String =
    #|dictionary ChildDict : MissingParentDict {
    #|  DOMString childProp;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = @partial_merged.merge_partials(defs)
  flatten(partial_merged, ignore) |> ignore
}

///|
test "flatten merges/includes mixin members into interface" {
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
    #|MyInterface includes MyMixin;
  let defs = @parser.parse(widl)
  let partial_merged = @partial_merged.merge_partials(defs)
  let flattened_idl = flatten(partial_merged, ignore)
  let iface2 = flattened_idl.interfaces["MyInterface"]
  @json.inspect(iface2, content={
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
  })
}

///|
test "flatten skips includes statement when mixin is missing" {
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|MyInterface includes MissingMixin;
  let defs = @parser.parse(widl)
  let partial_merged = @partial_merged.merge_partials(defs)
  let flattened = flatten(partial_merged, ignore)
  // Should still have the interface, just without mixin members
  let iface = flattened.interfaces["MyInterface"]
  inspect(iface.members.length(), content="1")
}

///|
test "flatten includes merged interfaces, mixins, dictionaries, enums and callbacks" (
  t : @test.Test,
) {
  let widl : String =
    #|interface Dummy {
    #|  undefined dummyMethod();
    #|};
    #|interface MyInterface: ParentInterface {
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
    #|dictionary EventInit {
    #|  boolean bubbles = false;
    #|  boolean cancelable = false;
    #|  boolean composed = false;
    #|};
    #|dictionary MyEvent : EventInit {
    #|  required DOMString type;
    #|};
    #|partial dictionary EventInit {
    #|  boolean partial_dict = false;
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
  let partial_merged = @partial_merged.merge_partials(defs)
  let flattened_idl = flatten(partial_merged, ignore)
  t.write(flattened_idl.to_json().stringify(indent=2))
  t.snapshot(filename="flattened_idl_snapshot.json")
}

///|
test "get_interface_ancestors returns transitive parent chain" {
  let widl : String =
    #|interface EventTarget {};
    #|interface Node : EventTarget {};
    #|interface Element : Node {};
    #|interface HTMLElement : Element {};
  let defs = @parser.parse(widl)
  let partial_merged = @partial_merged.merge_partials(defs)
  let flattened_idl = flatten(partial_merged, ignore)
  let ancestors = get_interface_ancestors(flattened_idl, "HTMLElement")
  @json.inspect(ancestors, content=["Element", "Node", "EventTarget"])
}
