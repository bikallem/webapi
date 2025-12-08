///|
/// Merged interface with all partials and mixin members combined
struct MergedInterface {
  name : String
  inherits : Array[String] // TODO, this should just be String, since there is only single inheritance
  members : Array[InterfaceMember]
  is_mixin : Bool // TODO: why do we need this if this is a merged Interface, How about is_partial?
} derive(Show, ToJson)

///|
fn MergedInterface::new(
  name : String,
  inherits? : Array[String] = [],
  members? : Array[InterfaceMember] = [],
  is_mixin? : Bool = false,
) -> MergedInterface {
  MergedInterface::{ name, inherits, members, is_mixin }
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
  interfaces : Map[String, MergedInterface]
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
  let iface = MergedInterface::new("Element", inherits=["Element"])
  inspect(iface.name, content="Element")
  inspect(
    iface.inherits,
    content=(
      #|["Element"]
    ),
  )
  inspect(iface.is_mixin, content="false")
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
