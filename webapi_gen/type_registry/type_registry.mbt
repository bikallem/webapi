///|
pub enum NamedTypeKind {
  Interface
  Dictionary
  Enum
  Typedef
  UnionTypedef
  Callback
  Unknown
} derive(Show, ToJson)

///|
/// Registry of known types for filtering and type resolution
pub struct TypeRegistry {
  interface_names : @hashset.HashSet[String]
  dictionary_names : @hashset.HashSet[String]
  enum_names : @hashset.HashSet[String]
  typedef_names : @hashset.HashSet[String]
  union_typedef_names : @hashset.HashSet[String]
  callback_names : @hashset.HashSet[String]
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
    union_typedef_names: @hashset.new(),
    callback_names: @hashset.new(),
  }
  for def in definitions {
    match def.definition {
      CallbackInterface(cbi) => registry.callback_names.add(cbi.name)
      CallbackFunction(cbf) => registry.callback_names.add(cbf.name)
      Typedef(td) => {
        registry.typedef_names.add(td.name)
        if td.type_ is Union(_) {
          registry.union_typedef_names.add(td.name)
        }
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
pub fn TypeRegistry::named_type_kind(
  self : TypeRegistry,
  name : String,
) -> NamedTypeKind {
  if self.interface_names.contains(name) {
    NamedTypeKind::Interface
  } else if self.dictionary_names.contains(name) {
    NamedTypeKind::Dictionary
  } else if self.enum_names.contains(name) {
    NamedTypeKind::Enum
  } else if self.union_typedef_names.contains(name) {
    NamedTypeKind::UnionTypedef
  } else if self.typedef_names.contains(name) {
    NamedTypeKind::Typedef
  } else if self.callback_names.contains(name) {
    NamedTypeKind::Callback
  } else {
    NamedTypeKind::Unknown
  }
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
pub fn TypeRegistry::is_union_typedef(
  self : TypeRegistry,
  name : String,
) -> Bool {
  self.union_typedef_names.contains(name)
}

///|
pub fn TypeRegistry::is_callback(self : TypeRegistry, name : String) -> Bool {
  self.callback_names.contains(name)
}

///|
test "TypeRegistry::contains checks all type categories" {
  let reg : TypeRegistry = {
    interface_names: @hashset.from_array(["Element"]),
    dictionary_names: @hashset.from_array(["EventInit"]),
    enum_names: @hashset.from_array(["ScrollBehaviour"]),
    typedef_names: @hashset.from_array(["DOMString"]),
    union_typedef_names: @hashset.from_array(["HeadersInit"]),
    callback_names: @hashset.from_array(["EventListener"]),
  }
  inspect(reg.contains("Element"), content="true")
  inspect(reg.contains("EventInit"), content="true")
  inspect(reg.contains("ScrollBehaviour"), content="true")
  inspect(reg.contains("Unknown"), content="false")
  inspect(reg.is_interface("Element"), content="true")
  inspect(reg.is_dictionary("EventInit"), content="true")
  inspect(reg.is_enum("ScrollBehaviour"), content="true")
  inspect(reg.is_typedef("DOMString"), content="true")
  inspect(reg.is_callback("EventListener"), content="true")
  inspect(reg.is_union_typedef("HeadersInit"), content="true")
  inspect(reg.named_type_kind("Element") is NamedTypeKind::Interface, content="true")
  inspect(
    reg.named_type_kind("EventInit") is NamedTypeKind::Dictionary,
    content="true",
  )
  inspect(reg.named_type_kind("ScrollBehaviour") is NamedTypeKind::Enum, content="true")
  inspect(reg.named_type_kind("DOMString") is NamedTypeKind::Typedef, content="true")
  inspect(
    reg.named_type_kind("HeadersInit") is NamedTypeKind::UnionTypedef,
    content="true",
  )
  inspect(
    reg.named_type_kind("EventListener") is NamedTypeKind::Callback,
    content="true",
  )
  inspect(reg.named_type_kind("Unknown") is NamedTypeKind::Unknown, content="true")
}
