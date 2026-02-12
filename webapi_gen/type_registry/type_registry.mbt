///|
/// Registry of known types for filtering and type resolution
pub struct TypeRegistry {
  interface_names : @hashset.HashSet[String]
  dictionary_names : @hashset.HashSet[String]
  enum_names : @hashset.HashSet[String]
  typedef_names : @hashset.HashSet[String]
  callback_names : @hashset.HashSet[String]
  typedef_targets : Map[String, @parser.Type]
} derive(Show, ToJson)

///|
pub fn TypeRegistry::new(
  definitions : Array[@parser.DefinitionExtendedAttributes],
) -> TypeRegistry {
  let registry = TypeRegistry::{
    interface_names: @hashset.new(),
    dictionary_names: @hashset.new(),
    enum_names: @hashset.new(),
    typedef_names: @hashset.new(),
    callback_names: @hashset.new(),
    typedef_targets: {},
  }
  for def in definitions {
    match def.definition {
      CallbackInterface(cbi) => registry.callback_names.add(cbi.name)
      CallbackFunction(cbf) => registry.callback_names.add(cbf.name)
      Typedef(td) => {
        registry.typedef_names.add(td.name)
        registry.typedef_targets[td.name] = td.type_
      }
      Enum(e) => registry.enum_names.add(e.name)
      PartialDictionary(_) => ()
      Dictionary(dict) => registry.dictionary_names.add(dict.name)
      PartialNamespace(_) => ()
      Namespace(_) => ()
      PartialMixin(_) => ()
      Mixin(_) => ()
      PartialInterface(_) => ()
      Interface(interface) => registry.interface_names.add(interface.name)
      Includes(_) => ()
    }
  }
  registry
}

///|
/// Check if a type name is known in the registry
pub fn TypeRegistry::contains(self : TypeRegistry, name : String) -> Bool {
  self.interface_names.contains(name) ||
  self.dictionary_names.contains(name) ||
  self.enum_names.contains(name) ||
  self.typedef_names.contains(name) ||
  self.callback_names.contains(name)
}

///|
pub fn TypeRegistry::is_interface(self : TypeRegistry, name : String) -> Bool {
  self.interface_names.contains(name)
}

///|
pub fn TypeRegistry::is_dictionary(self : TypeRegistry, name : String) -> Bool {
  self.dictionary_names.contains(name)
}

///|
pub fn TypeRegistry::is_enum(self : TypeRegistry, name : String) -> Bool {
  self.enum_names.contains(name)
}

///|
pub fn TypeRegistry::is_typedef(self : TypeRegistry, name : String) -> Bool {
  self.typedef_names.contains(name)
}

///|
pub fn TypeRegistry::is_callback(self : TypeRegistry, name : String) -> Bool {
  self.callback_names.contains(name)
}

///|
pub fn TypeRegistry::resolve_typedef(
  self : TypeRegistry,
  name : String,
) -> @parser.Type? {
  self.typedef_targets.get(name)
}

///|
test "TypeRegistry::contains checks all type categories" {
  let reg : TypeRegistry = {
    interface_names: @hashset.from_array(["Element"]),
    dictionary_names: @hashset.from_array(["EventInit"]),
    enum_names: @hashset.from_array(["ScrollBehaviour"]),
    typedef_names: @hashset.from_array(["DOMString"]),
    callback_names: @hashset.from_array(["EventListener"]),
    typedef_targets: {},
  }
  inspect(reg.contains("Element"), content="true")
  inspect(reg.contains("EventInit"), content="true")
  inspect(reg.contains("ScrollBehaviour"), content="true")
  inspect(reg.contains("Unknown"), content="false")
  inspect(reg.is_interface("Element"), content="true")
  inspect(reg.is_dictionary("EventInit"), content="true")
  inspect(reg.is_enum("ScrollBehaviour"), content="true")
}
