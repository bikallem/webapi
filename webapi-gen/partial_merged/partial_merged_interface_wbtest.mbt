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
  inspect(iface2.name, content="Element")
  inspect(iface2.inheritance, content="Some(\"HTMLElement\")")
  inspect(iface2.members.length(), content="2")
  inspect(iface2.specs.length(), content="2")
  assert_true(iface2.specs.contains("html.idl"))
  assert_true(iface2.specs.contains("dom.idl"))
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
  inspect(iface2.name, content="Element")
  inspect(iface2.inheritance, content="Some(\"Node\")")
  inspect(iface2.members.length(), content="1")
  inspect(iface2.specs.length(), content="2")
  assert_true(iface2.specs.contains("html.idl"))
  assert_true(iface2.specs.contains("dom.idl"))
}
