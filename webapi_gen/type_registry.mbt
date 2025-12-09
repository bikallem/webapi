///|
/// Registry of known types for filtering and type resolution
struct TypeRegistry {
  interface_names : @hashset.HashSet[String]
  dictionary_names : @hashset.HashSet[String]
  enum_names : @hashset.HashSet[String]
  typedef_names : @hashset.HashSet[String]
  callback_names : @hashset.HashSet[String]
} derive(Show, ToJson)

///|
fn TypeRegistry::new() -> TypeRegistry {
  TypeRegistry::{
    interface_names: @hashset.new(),
    dictionary_names: @hashset.new(),
    enum_names: @hashset.new(),
    typedef_names: @hashset.new(),
    callback_names: @hashset.new(),
  }
}

///|
/// Check if a type name is known in the registry
fn TypeRegistry::contains(self : TypeRegistry, name : String) -> Bool {
  self.interface_names.contains(name) ||
  self.dictionary_names.contains(name) ||
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
  self.dictionary_names.contains(name)
}

///|
fn TypeRegistry::is_enum(self : TypeRegistry, name : String) -> Bool {
  self.enum_names.contains(name)
}

///|
fn TypeRegistry::is_typedef(self : TypeRegistry, name : String) -> Bool {
  self.typedef_names.contains(name)
}

///|
fn TypeRegistry::is_callback(self : TypeRegistry, name : String) -> Bool {
  self.callback_names.contains(name)
}
