///|
pub enum NamedTypeKind {
  Interface
  Dictionary
  Enum
  Typedef
  UnionTypedef
  Callback
  Unknown
} derive(Debug, ToJson)

///|
/// Registry of known types for filtering and type resolution
pub struct TypeRegistry {
  interface_names : @hashset.HashSet[String]
  dictionary_names : @hashset.HashSet[String]
  enum_names : @hashset.HashSet[String]
  typedef_names : @hashset.HashSet[String]
  union_typedef_names : @hashset.HashSet[String]
  callback_names : @hashset.HashSet[String]
  mut callback_defs : Map[String, @parser.CallbackFunctionDefinition]
  mut typedef_defs : Map[String, @parser.TypedefDefinition]
} derive(Debug, ToJson)

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
    callback_defs: {},
    typedef_defs: {},
  }
  for def in definitions {
    match def.definition {
      CallbackInterface(cbi) => registry.callback_names.add(cbi.name)
      CallbackFunction(cbf) => {
        registry.callback_names.add(cbf.name)
        registry.callback_defs[cbf.name] = cbf
      }
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
/// Set callback definitions from flattened IDL (includes CallbackInterface → CallbackFunction conversions).
pub fn TypeRegistry::set_callback_defs(
  self : TypeRegistry,
  defs : Map[String, @parser.CallbackFunctionDefinition],
) -> Unit {
  self.callback_defs = defs
}

///|
/// Get callback function definition by name, if available.
pub fn TypeRegistry::get_callback_def(
  self : TypeRegistry,
  name : String,
) -> @parser.CallbackFunctionDefinition? {
  self.callback_defs.get(name)
}

///|
/// Set typedef definitions from flattened IDL.
pub fn TypeRegistry::set_typedef_defs(
  self : TypeRegistry,
  defs : Map[String, @parser.TypedefDefinition],
) -> Unit {
  self.typedef_defs = defs
}

///|
/// Resolve a typedef name to a callback function definition, following
/// `Nullable(Identifier(cb_name))` chains like `EventHandler = EventHandlerNonNull?`.
pub fn TypeRegistry::resolve_typedef_to_callback(
  self : TypeRegistry,
  name : String,
) -> (String, @parser.CallbackFunctionDefinition)? {
  guard self.typedef_defs.get(name) is Some(td) else { return None }
  let inner = match td.type_ {
    Nullable(inner) => inner
    _ => td.type_
  }
  guard inner is Identifier(cb_name) else { return None }
  guard self.get_callback_def(cb_name) is Some(cb_def) else { return None }
  Some((cb_name, cb_def))
}
