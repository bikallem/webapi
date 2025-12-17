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
/// Container for all interface-related emissions
pub struct InterfaceEmit {
  name : String
  external_type : ExternalTypeEmit
  trait_def : TraitEmit
  ctor : ConstructorEmit? // Optional constructor
  union_arg_traits : Array[UnionArgTraitEmit] // Union argument traits for method params
}
