///|
/// Merged interface IR with all partials and mixin members combined
struct MergedInterfaceIR {
  name : String
  members : Array[InterfaceMember]
  inheritance : String?
} derive(Show, ToJson)

///|
fn MergedInterfaceIR::merge(
  self : MergedInterfaceIR,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> MergedInterfaceIR {
  let inheritance = match inheritance {
    Some(_) => inheritance
    None => self.inheritance
  }
  { ..self, members: self.members + members, inheritance }
}

///|
fn MergedInterfaceIR::new(
  name : String,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> MergedInterfaceIR {
  MergedInterfaceIR::{ name, inheritance, members }
}

///|
/// Visitor that merges partial interfaces, mixins, and dictionaries into their
/// primary definitions.
struct MergeVisitor {
  interfaces : Map[String, MergedInterfaceIR]
}

///|
fn MergeVisitor::merge(
  self : MergeVisitor,
  name : String,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> Unit {
  match self.interfaces.get(name) {
    Some(current) => self.interfaces[name] = current.merge(members, inheritance)
    None =>
      self.interfaces[name] = MergedInterfaceIR::new(name, members, inheritance)
  }
}

///|
impl DefinitionVisitor for MergeVisitor with visit_interface(self, iface) -> Unit {
  self.merge(iface.name, iface.members, iface.inheritance)
}

///|
impl DefinitionVisitor for MergeVisitor with visit_partial_interface(
  self,
  piface,
) -> Unit {
  self.merge(piface.name, piface.members, None)
}

///|
impl DefinitionVisitor for MergeVisitor with visit_mixin(self, mxn) -> Unit {
  self.merge(mxn.name, mxn.members, None)
}

///|
impl DefinitionVisitor for MergeVisitor with visit_partial_mixin(self, pmxn) -> Unit {
  self.merge(pmxn.name, pmxn.members, None)
}

///|
test "MergeVisitor merges interfaces, partials, and mixins correctly" {
  let visitor = MergeVisitor::{ interfaces: Map::new() }
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
