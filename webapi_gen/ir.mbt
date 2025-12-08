///|
/// Merged interface IR with all partials and mixin members combined
struct MergedInterfaceIR {
  name : String
  members : Array[InterfaceMember]
  inheritance : String?
} derive(Show, ToJson)

///|
fn MergedInterfaceIR::new(
  name : String,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> MergedInterfaceIR {
  MergedInterfaceIR::{ name, inheritance, members }
}

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
/// Merged Dictionary with all partials combined.
struct MergedDictionaryIR {
  name : String
  members : Array[DictionaryMember]
  inheritance : String?
} derive(Show, ToJson)

///|
fn MergedDictionaryIR::new(
  name : String,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> MergedDictionaryIR {
  MergedDictionaryIR::{ name, inheritance, members }
}

///|
fn MergedDictionaryIR::merge(
  self : MergedDictionaryIR,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> MergedDictionaryIR {
  let inheritance = match inheritance {
    None => self.inheritance
    Some(_) => inheritance
  }
  { ..self, members: self.members + members, inheritance }
}

///|
/// Consolidated IDL after merging partials and applying mixins.
struct MergedIdl {
  interfaces : Map[String, MergedInterfaceIR]
  dictionaries : Map[String, MergedDictionaryIR]
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
