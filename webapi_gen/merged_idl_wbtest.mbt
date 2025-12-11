///|
test "MergedIdl::from merges dictionary inheritance" {
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
  let partial_merged = PartialMerged::new(defs)
  let merged_idl = MergedIdl::from(partial_merged)
  let merged_dict = merged_idl.dictionaries["ChildDict"]
  @json.inspect(merged_dict, content={
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
        "default_value": ["ConstValue", ["Boolean", false]],
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
        "default_value": ["ConstValue", ["Boolean", false]],
      },
    ],
  })
}

///|
test "MergedIdl::from handles dictionary without inheritance" {
  let widl : String =
    #|dictionary SimpleDict {
    #|  DOMString simpleProp;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = PartialMerged::new(defs)
  let merged_idl = MergedIdl::from(partial_merged)
  let merged_dict = merged_idl.dictionaries["SimpleDict"]
  @json.inspect(merged_dict, content={
    "name": "SimpleDict",
    "members": [
      {
        "extended_attributes": [],
        "type_": "DOMString",
        "name": "simpleProp",
        "required": false,
      },
    ],
  })
}

///|
test "panic: MergedIdl::from aborts when parent dictionary is missing" {
  let widl : String =
    #|dictionary ChildDict : MissingParentDict {
    #|  DOMString childProp;
    #|};
  let defs = @parser.parse(widl)
  let partial_merged = PartialMerged::new(defs)
  MergedIdl::from(partial_merged) |> ignore
}

///|
test "MergedIdl::from flattens mixins into interfaces" {
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
  let partial_merged = PartialMerged::new(defs)
  let merged_idl = MergedIdl::from(partial_merged)
  let iface2 = merged_idl.interfaces["MyInterface"]
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
test "panic: MergedIdl::from aborts when mixin is missing" {
  let widl : String =
    #|interface MyInterface {
    #|  attribute DOMString? textContent;
    #|};
    #|MyInterface includes MissingMixin;
  let defs = @parser.parse(widl)
  let partial_merged = PartialMerged::new(defs)
  MergedIdl::from(partial_merged) |> ignore
}

///|
test "MergedIdl includes merged interfaces, mixins, dictionaries, enums and callbacks" (
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
  let partial_merged = PartialMerged::new(defs)
  let merged_idl = MergedIdl::from(partial_merged)
  t.write(merged_idl.to_json().stringify(indent=2))
  t.snapshot(filename="merged_idl_snapshot.json")
}
