///|
/// Base types for JavaScript interop
/// This file provides the fundamental types for FFI with JavaScript

// ============================================================================
// Core JS Types
// ============================================================================

///|
/// Opaque type representing any JavaScript value
#external
pub type JsValue

///|
/// Opaque type representing JavaScript null
#external
pub type JsNull

///|
/// Opaque type representing a JavaScript Promise
#external
pub type JsPromise[T]

// ============================================================================
// TJsValue Trait - All JS-interop types must implement this
// ============================================================================

///|
/// Trait for types that can be converted to JsValue
pub trait TJsValue {
  to_js(Self) -> JsValue
}

// ============================================================================
// JsValue FFI Functions
// ============================================================================

///|
/// Get JavaScript undefined value
pub fn JsValue::undefined() -> JsValue = "JsValue" "undefined"

///|
/// Get JavaScript null value  
pub fn JsValue::null() -> JsValue = "JsValue" "null"

// ============================================================================
// JsNull FFI Functions
// ============================================================================

///|
/// Get JavaScript null as JsNull type
#as_free_fn
pub fn JsNull::null() -> JsNull = "JsNull" "null"

// ============================================================================
// Primitive Type Implementations
// ============================================================================

///|
pub impl TJsValue for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TJsValue for Int with to_js(self : Int) -> JsValue = "%identity"

///|
pub impl TJsValue for Int64 with to_js(self : Int64) -> JsValue = "%identity"

///|
pub impl TJsValue for Double with to_js(self : Double) -> JsValue = "%identity"

///|
pub impl TJsValue for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TJsValue for JsValue with to_js(self : JsValue) -> JsValue = "%identity"

///|
pub impl TJsValue for JsNull with to_js(self : JsNull) -> JsValue = "%identity"

// ============================================================================
// Array Support
// ============================================================================

///|
/// Opaque type for JavaScript arrays
#external
pub type JsArray

///|
pub impl TJsValue for JsArray with to_js(self : JsArray) -> JsValue = "%identity"

///|
/// Create an empty JavaScript array
pub fn JsArray::empty() -> JsArray = "JsArray" "empty"

///|
/// Push a value onto the JavaScript array
pub fn JsArray::push(self : JsArray, value : JsValue) -> Unit = "JsArray" "push"

///|
/// Convert MoonBit Array to JsArray
pub fn[T : TJsValue] array_to_js(arr : Array[T]) -> JsValue {
  let js_arr = JsArray::empty()
  for item in arr {
    js_arr.push(TJsValue::to_js(item))
  }
  TJsValue::to_js(js_arr)
}

///|
/// TJsValue implementation for Array[T]
pub impl[T : TJsValue] TJsValue for Array[T] with to_js(self : Array[T]) -> JsValue {
  array_to_js(self)
}

// ============================================================================
// Promise Support
// ============================================================================

///|
/// Await a JavaScript Promise (returns the resolved value as JsValue)
/// Note: This should only be called in an async context
pub fn JsPromise::wait(self : JsPromise[JsValue]) -> JsValue = "JsPromise" "await"

// ============================================================================
// Default Value Helpers
// ============================================================================

///|
/// Get undefined as a default value for optional JsValue parameters
pub fn default_js_value() -> JsValue {
  JsValue::undefined()
}

///|
/// Convert an Option[T] to JsValue - returns undefined if None
pub fn[T : TJsValue] opt_to_js(opt : T?) -> JsValue {
  match opt {
    Some(v) => v.to_js()
    None => JsValue::undefined()
  }
}

// ============================================================================
// Type Casting Helpers
// ============================================================================

///|
/// Unsafe cast from JsValue to any type.
/// This is used internally for FFI returns that need type conversion.
/// WARNING: No runtime type checking is performed.
pub fn[T] JsValue::unsafe_cast(self : JsValue) -> T = "%identity"

///|
/// Cast JsValue to an optional type (nullable return from JS)
pub fn[T] JsValue::as_option(self : JsValue) -> T? = "%identity"
