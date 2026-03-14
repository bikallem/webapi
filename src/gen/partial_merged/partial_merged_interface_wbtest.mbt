///|
test "MergedInterface::merge() combines members and inheritance" {
  let iface1 = PartialMergedInterface::new(
    "Element",
    [
      {
        extended_attributes: [],
        interface_member: Attribute({
          is_inherit: false,
          name: "id",
          type_: @parser.Type::Identifier("DOMString"),
          is_readonly: false,
          static_: false,
        }),
      },
    ],
    None,
    @hashset.HashSet::from_array(["html.idl"]),
  )
  let iface2 = iface1.merge(
    [
      {
        extended_attributes: [],
        interface_member: RegularOperation({
          return_type: @parser.Type::Identifier("undefined"),
          name: "focus",
          arguments: [],
          static_: false,
        }),
      },
    ],
    Some("HTMLElement"),
    @hashset.HashSet::from_array(["dom.idl"]),
  )
  json_inspect(iface2, content={
    "name": "Element",
    "members": [
      {
        "extended_attributes": [],
        "interface_member": [
          "Attribute",
          {
            "type_": ["Identifier", "DOMString"],
            "name": "id",
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
            "return_type": ["Identifier", "undefined"],
            "name": "focus",
            "arguments": [],
            "static_": false,
          },
        ],
      },
    ],
    "inheritance": "HTMLElement",
    "specs": ["dom.idl", "html.idl"],
  })
}

///|
test "MergedInterface::merge() retains existing inheritance if none provided" {
  let iface1 = PartialMergedInterface::new(
    "Element",
    [],
    Some("Node"),
    @hashset.HashSet::from_array(["html.idl"]),
  )
  let iface2 = iface1.merge(
    [
      {
        extended_attributes: [],
        interface_member: RegularOperation({
          return_type: @parser.Type::Identifier("void"),
          name: "focus",
          static_: false,
          arguments: [],
        }),
      },
    ],
    None,
    @hashset.HashSet::from_array(["dom.idl"]),
  )
  json_inspect(iface2, content={
    "name": "Element",
    "members": [
      {
        "extended_attributes": [],
        "interface_member": [
          "RegularOperation",
          {
            "return_type": ["Identifier", "void"],
            "name": "focus",
            "arguments": [],
            "static_": false,
          },
        ],
      },
    ],
    "inheritance": "Node",
    "specs": ["dom.idl", "html.idl"],
  })
}
