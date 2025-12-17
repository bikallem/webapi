// CG - Code Generation IR

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
/// Union argument trait emission for inline union types in method parameters
struct UnionArgTraitEmit {
  trait_name : String // e.g., "TAddEventListenerOptionsArg"
  member_types : Array[String] // MoonBit types that implement this trait
}

///|
/// Attribute emit for generating FFI and trait default implementations
struct AttributeEmit {
  interface_name : String // e.g., "Event"
  attr_name : String // Original attribute name, e.g., "type"
  method_name : String // Snake_case method name, e.g., "type_"
  mbt_type : String // MoonBit type string, e.g., "String"
  is_readonly : Bool
  is_static : Bool
}

///|
/// Method emit for generating FFI and trait default implementations
struct MethodEmit {
  interface_name : String // e.g., "EventTarget"
  original_name : String // Original method name, e.g., "addEventListener"
  method_name : String // Snake_case method name, e.g., "add_event_listener"
  return_type : String // MoonBit return type string
  args : String // Already formatted argument list for trait signature
  ffi_args : String // FFI argument list (obj : JsValue, ...)
  ffi_call_args : String // Arguments for FFI call (self.to_js(), TJsValue::to_js(arg1), ...)
  is_static : Bool
}

///|
/// Container for all interface-related emissions
pub struct InterfaceEmit {
  name : String
  external_type : ExternalTypeEmit
  trait_def : TraitEmit
  ctor : ConstructorEmit? // Optional constructor
  union_arg_traits : Array[UnionArgTraitEmit] // Union argument traits for method params
  attributes : Array[AttributeEmit] // Attributes for FFI/impl generation
  operations : Array[MethodEmit] // Methods for FFI/impl generation
}
