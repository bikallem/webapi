///|
test "MergedInterface::new() creates interface with defaults" {
  let iface = MergedInterfaceIR::new("Element", [], Some("Node"))
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
  let iface1 = MergedInterfaceIR::new(
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
        return_type: Type::Identifier("void"),
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
          "return_type": ["Identifier", "void"],
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
  let iface1 = MergedInterfaceIR::new("Element", [], Some("Node"))
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
  let dict1 = MergedDictionaryIR::new("ElementInit", [], None)
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
    dicitionary_names: @hashset.from_array(["EventInit"]),
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
