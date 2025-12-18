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

///|
/// Dictionary member emission
pub struct DictionaryMemberEmit {
  name : String // Member name, e.g., "bubbles"
  param_name : String // Safe parameter name, e.g., "bubbles"
  mbt_type : String // MoonBit type, e.g., "Bool"
  required : Bool
  default_value : String? // Default value as MoonBit string if any
}

///|
/// Dictionary emmission
pub struct DictionaryEmit {
  name : String // Dictionary name
  members : Array[DictionaryMemberEmit]
}

///|
/// Enum member emission
pub struct EnumMemberEmit {
  variant_name : String
  original_value : String
}

///|
/// Enum emission
pub struct EnumEmit {
  name : String
  variants : Array[EnumMemberEmit]
}

///|
/// Typedef emission

///|
/// Typedef alias emission
pub struct TypedefAliasEmit {
  name : String
  target_type : String
}

///|
/// Typedef union emission
pub struct TypedefUnionEmit {
  name : String
  member_types : Array[String]
}

///|
/// Typedef emission
pub enum TypedefEmit {
  Alias(TypedefAliasEmit)
  Union(TypedefUnionEmit)
}

///|
/// Callback function argument emission  
pub struct CallbackArgEmit {
  name : String // Argument name, e.g., "event"
  mbt_type : String // MoonBit type, e.g., "Event"
}

///|
/// Callback function emission
pub struct CallbackEmit {
  name : String // Callback name, e.g., "EventListener"
  args : Array[CallbackArgEmit] // Callback arguments
  return_type : String // MoonBit return type, e.g., "Unit"
  ffi_module : String // FFI module name, e.g., "webapi_EventListener"
}
