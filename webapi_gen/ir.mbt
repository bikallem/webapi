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
/// Merged Dictionary with all partials combined.
struct MergedDictionary {
  name : String
  inherits : String?
  members : Array[DictionaryMember]
} derive(Show, ToJson)

///|
fn MergedDictionary::new(
  name : String,
  inherits? : String,
  members? : Array[DictionaryMember] = [],
) -> MergedDictionary {
  MergedDictionary::{ name, inherits, members }
}

///|
/// Consolidated IDL after merging partials and applying mixins.
struct MergedIdl {
  interfaces : Map[String, MergedInterfaceIR]
  dictionaries : Map[String, MergedDictionary]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callbacks : Map[String, CallbackFunctionDefinition]
  callback_interfaces : Map[String, CallbackInterfaceDefinition]
  includes : Array[IncludesStatement]
} derive(Show, ToJson)

///|
pub fn MergedIdl::new() -> MergedIdl {
  MergedIdl::{
    interfaces: {},
    dictionaries: {},
    enums: {},
    typedefs: {},
    callbacks: {},
    callback_interfaces: {},
    includes: [],
  }
}

///|
/// Registry of known types for filtering and type resolution
struct TypeRegistry {
  interface_names : @hashset.HashSet[String]
  dicitionary_names : @hashset.HashSet[String]
  enum_names : @hashset.HashSet[String]
  typedef_names : @hashset.HashSet[String]
  callback_names : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
fn TypeRegistry::new() -> TypeRegistry {
  TypeRegistry::{
    interface_names: @hashset.new(),
    dicitionary_names: @hashset.new(),
    enum_names: @hashset.new(),
    typedef_names: @hashset.new(),
    callback_names: @hashset.new(),
  }
}

///|
/// Check if a type name is known in the registry
fn TypeRegistry::contains(self : TypeRegistry, name : String) -> Bool {
  self.interface_names.contains(name) ||
  self.dicitionary_names.contains(name) ||
  self.enum_names.contains(name) ||
  self.typedef_names.contains(name) ||
  self.callback_names.contains(name)
}

///|
fn TypeRegistry::is_interface(self : TypeRegistry, name : String) -> Bool {
  self.interface_names.contains(name)
}

///|
fn TypeRegistry::is_dictionary(self : TypeRegistry, name : String) -> Bool {
  self.dicitionary_names.contains(name)
}

///|
fn TypeRegistry::is_enum(self : TypeRegistry, name : String) -> Bool {
  self.enum_names.contains(name)
}

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
