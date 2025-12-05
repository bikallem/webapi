///|
/// JsValue - Core type representing any JavaScript value
/// This file provides the fundamental type for FFI with JavaScript

///|
/// Opaque type representing any JavaScript value
#external
pub type JsValue

///|
/// Trait for types that can be converted to JsValue
/// Note: null() is not in the trait to allow trait objects.
/// Each concrete type implements its own null() method.
pub(open) trait TJsValue {
  to_js(Self) -> JsValue
  is_null(Self) -> Bool = _
}

///|
pub impl TJsValue for JsValue with to_js(self : JsValue) -> JsValue = "%identity"

///|
impl TJsValue with is_null(self : Self) -> Bool {
  JsValue::is_null(self.to_js())
}

///|
/// Get JavaScript undefined value
pub fn JsValue::undefined() -> JsValue = "JsValue" "undefined"

///|
fn js_null_ffi() -> JsValue = "JsValue" "null"

///|
/// Get JavaScript null value  
pub fn[T] JsValue::null() -> T {
  js_null_ffi().unsafe_cast()
}

///|
/// Unsafe cast from JsValue to any type.
/// This is used internally for FFI returns that need type conversion.
/// WARNING: No runtime type checking is performed.
pub fn[T] JsValue::unsafe_cast(self : JsValue) -> T = "%identity"

///|
pub fn JsValue::is_null(self : JsValue) -> Bool = "JsValue" "isNull"

///|
/// Cast JsValue to an optional type (nullable return from JS)
pub fn[T] JsValue::as_option(self : JsValue) -> T? {
  match self {
    v if JsValue::is_null(v) => None
    _ => Some(self.unsafe_cast())
  }
}

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

///|
/// Convert a MoonBit function to JsValue for use in callbacks
pub fn[T] fn_to_js(f : T) -> JsValue = "%identity"
