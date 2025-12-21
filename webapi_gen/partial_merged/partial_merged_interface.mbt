///|
/// Merged interface IR with all partials combined.
pub struct PartialMergedInterface {
  name : String
  members : Array[@parser.InterfaceMemberExtendedAttributes]
  inheritance : String?
} derive(Show, ToJson)

///|
fn PartialMergedInterface::new(
  name : String,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  inheritance : String?,
) -> PartialMergedInterface {
  PartialMergedInterface::{ name, inheritance, members }
}

///|
pub fn PartialMergedInterface::merge(
  self : PartialMergedInterface,
  members : Array[@parser.InterfaceMemberExtendedAttributes],
  inheritance : String?,
) -> PartialMergedInterface {
  let inheritance = match inheritance {
    Some(_) => inheritance
    None => self.inheritance
  }
  { ..self, members: self.members + members, inheritance }
}

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
  )
  @json.inspect(iface2, content={
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
  })
}

///|
test "MergedInterface::merge() retains existing inheritance if none provided" {
  let iface1 = PartialMergedInterface::new("Element", [], Some("Node"))
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
  )
  @json.inspect(iface2, content={
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
  })
}
