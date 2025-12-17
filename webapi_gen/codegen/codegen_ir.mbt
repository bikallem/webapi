// CG - Code Generation IR

///|
priv struct MethodEmit {
  type_name : String
  method_name : String
  return_type : @parser.Type
  args : Array[ArgumentEmit]
  calls_ffi : Bool // whether this method calls an FFI function
}

///|
priv struct ArgumentEmit {
  name : String
  optional : Bool
  type_ : @parser.Type
  default_value : @parser.DefaultValue?
}

///|
/// External type codegen info. Always implements TJSValue
struct ExternalTypeEmit {
  type_name : String
  implements_trait : Bool // whether this type implements a trait of the T+type_name
}

///|
/// Trait method signature in a trait definition
priv struct TraitMethodEmit {
  method_name : String
  return_type : String // Already resolved MoonBit type string
  args : String // Already formatted argument list
  is_static : Bool
}

///|
/// Trait definition emission
struct TraitEmit {
  trait_name : String // e.g., "TEventTarget"
  parent_trait : String? // Inheritance: e.g., "TJsValue" or "TNode"
  methods : Array[TraitMethodEmit]
}

///|
/// Constructor emission for interfaces with constructor()
struct ConstructorEmit {
  type_name : String // The type being constructed, e.g., "EventTarget"
  args : String // Already formatted argument list
  ffi_module : String // e.g., "webapi_EventTarget"
}

///|
/// Container for all interface-related emissions
pub struct InterfaceEmit {
  name : String
  external_type : ExternalTypeEmit
  trait_def : TraitEmit
  ctor : ConstructorEmit? // Optional constructor
}

///|
priv enum Emit {
  ExternalType(ExternalTypeEmit)
  Method(MethodEmit)
}
