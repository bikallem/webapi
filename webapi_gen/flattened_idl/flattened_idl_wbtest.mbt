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
  json_inspect(flattened_dict, content={
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
  json_inspect(flattened_dict, content={
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
test "flatten merges 3-level dictionary inheritance chain" {
  let widl : String =
    #|dictionary A {
    #|  DOMString aProp;
    #|};
    #|dictionary B : A {
    #|  boolean bProp = false;
    #|};
    #|dictionary C : B {
    #|  long cProp;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = @partial_merged.merge_partials(defs)
  let flattened_idl = flatten(partial_merged, ignore)
  let flattened_c = flattened_idl.dictionaries["C"]
  // C should have members from A, B, then C (ancestor-first order)
  json_inspect(flattened_c, content={
    "name": "C",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "aProp",
        "required": false,
      },
      {
        "extended_attributes": [],
        "type_": "Boolean",
        "name": "bProp",
        "required": false,
        "default_value": ["ConstValue", ["Boolean", "false"]],
      },
      {
        "extended_attributes": [],
        "type_": "Long",
        "name": "cProp",
        "required": false,
      },
    ],
    "specs": [],
  })
  // B should have members from A then B
  let flattened_b = flattened_idl.dictionaries["B"]
  json_inspect(flattened_b, content={
    "name": "B",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "aProp",
        "required": false,
      },
      {
        "extended_attributes": [],
        "type_": "Boolean",
        "name": "bProp",
        "required": false,
        "default_value": ["ConstValue", ["Boolean", "false"]],
      },
    ],
    "specs": [],
  })
  // A should only have its own members
  let flattened_a = flattened_idl.dictionaries["A"]
  json_inspect(flattened_a, content={
    "name": "A",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "aProp",
        "required": false,
      },
    ],
    "specs": [],
  })
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
  json_inspect(iface2, content={
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
    "specs": [],
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
test "flatten includes merged interfaces, mixins, dictionaries, enums and callbacks" {
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
  json_inspect(flattened_idl, content=({"interfaces":{"Dummy":{"name":"Dummy","members":[{"extended_attributes":[],"interface_member":["RegularOperation",{"return_type":"Undefined","name":"dummyMethod","arguments":[],"static_":false}]}],"specs":[]},"MyInterface":{"name":"MyInterface","members":[{"extended_attributes":[],"interface_member":["Attribute",{"type_":["Nullable","DOMString"],"name":"textContent","is_readonly":false,"static_":false,"is_inherit":false}]},{"extended_attributes":[],"interface_member":["RegularOperation",{"return_type":["Identifier","Node"],"name":"appendChild","arguments":[{"extended_attributes":[],"type_":{"extended_attributes":[],"type_":["Identifier","Element"]},"name":"newChild","optional":false,"variadic":false}],"static_":false}]},{"extended_attributes":[],"interface_member":["Attribute",{"type_":["Nullable","DOMString"],"name":"textContent2","is_readonly":false,"static_":false,"is_inherit":false}]},{"extended_attributes":[],"interface_member":["RegularOperation",{"return_type":"Undefined","name":"doSomething","arguments":[],"static_":false}]}],"inheritance":"ParentInterface","specs":[]}},"dictionaries":{"EventInit":{"name":"EventInit","members":[{"extended_attributes":[],"type_":"Boolean","name":"bubbles","required":false,"default_value":["ConstValue",["Boolean","false"]]},{"extended_attributes":[],"type_":"Boolean","name":"cancelable","required":false,"default_value":["ConstValue",["Boolean","false"]]},{"extended_attributes":[],"type_":"Boolean","name":"composed","required":false,"default_value":["ConstValue",["Boolean","false"]]},{"extended_attributes":[],"type_":"Boolean","name":"partial_dict","required":false,"default_value":["ConstValue",["Boolean","false"]]}],"specs":[]},"MyEvent":{"name":"MyEvent","members":[{"extended_attributes":[],"type_":"Boolean","name":"bubbles","required":false,"default_value":["ConstValue",["Boolean","false"]]},{"extended_attributes":[],"type_":"Boolean","name":"cancelable","required":false,"default_value":["ConstValue",["Boolean","false"]]},{"extended_attributes":[],"type_":"Boolean","name":"composed","required":false,"default_value":["ConstValue",["Boolean","false"]]},{"extended_attributes":[],"type_":"Boolean","name":"partial_dict","required":false,"default_value":["ConstValue",["Boolean","false"]]},{"extended_attributes":[],"type_":"DOMString","name":"type","required":true}],"specs":[]}},"namespaces":{},"enums":{"MyEnum":{"name":"MyEnum","values":["value1","value2"]}},"typedefs":{},"callbacks":{"MyCallback":{"name":"MyCallback","return_type":"Undefined","arguments":[{"extended_attributes":[],"type_":{"extended_attributes":[],"type_":"DOMString"},"name":"arg","optional":false,"variadic":false}]},"MyCallbackInterface":{"name":"MyCallbackInterface","return_type":"Undefined","arguments":[{"extended_attributes":[],"type_":{"extended_attributes":[],"type_":["Identifier","Event"]},"name":"e","optional":false,"variadic":false}]}}}))
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
  json_inspect(ancestors, content=["Element", "Node", "EventTarget"])
}
