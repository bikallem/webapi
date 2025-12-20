// CG - Code Generation IR

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
