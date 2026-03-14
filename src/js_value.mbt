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
/// Get JavaScript null value
pub fn[T] JsValue::null() -> T {
  js_null_ffi().unsafe_cast()
}

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TJsValue] JsValue::into(self : JsValue) -> T = "%identity"

///|
pub fn[T : TJsValue] JsValue::unsafe_into(self : JsValue) -> T = "%identity"

///|
/// Unsafe cast from JsValue to any type.
/// This is used internally for FFI returns that need type conversion.
/// WARNING: No runtime type checking is performed.
fn[T] JsValue::unsafe_cast(self : JsValue) -> T = "%identity"

///|
/// Convert a nullable JsValue to Option[T] for externref types.
/// Returns None if the value is null/undefined, otherwise unsafe-casts to T.
fn[T] JsValue::to_option(self : JsValue) -> T? {
  if JsValue::is_null(self) {
    None
  } else {
    Some(self.unsafe_cast())
  }
}

///|
/// Convert a nullable JsValue to Option[T] for wasm value types (Bool, Int, Double).
/// Uses FromJsAny for proper externref→value conversion on wasm-gc.
fn[T : FromJsAny] JsValue::to_option_prim(self : JsValue) -> T? {
  if JsValue::is_null(self) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(self)))
  }
}

///|
/// Convert an Option[T] to JsValue - returns undefined if None
fn[T : TJsValue] opt_to_js(opt : T?) -> JsValue {
  match opt {
    Some(v) => v.to_js()
    None => JsValue::undefined()
  }
}

///|
/// Get JavaScript undefined value
#cfg(target="js")
pub extern "js" fn JsValue::undefined() -> JsValue = "() => undefined"

///|
#cfg(target="js")
extern "js" fn js_null_ffi() -> JsValue = "() => null"

///|
#cfg(target="js")
pub extern "js" fn JsValue::is_null(self : JsValue) -> Bool = "(v) => v === null || v === undefined"

///|
/// Coerce any JavaScript value to a string (using '' + v).
#cfg(target="js")
pub extern "js" fn JsValue::to_string(self : JsValue) -> String = "(v) => '' + v"

///|
/// Convert JsValue to String (JsAny) for FromJsAny conversion. Identity on JS target.
#cfg(target="js")
extern "js" fn jsvalue_to_jsany(v : JsValue) -> String = "(v) => v"

///|
/// Convert a JsValue containing a JavaScript string to a MoonBit String.
#cfg(target="js")
pub fn JsValue::as_string(self : JsValue) -> String {
  self.into()
}

///|
/// Get JavaScript undefined value
#cfg(target="wasm-gc")
pub fn JsValue::undefined() -> JsValue = "JsValue" "undefined"

///|
#cfg(target="wasm-gc")
fn js_null_ffi() -> JsValue = "JsNull" "null"

///|
#cfg(target="wasm-gc")
pub fn JsValue::is_null(self : JsValue) -> Bool = "JsValue" "isNull"

///|
/// Convert JsValue (externref) to String ((ref extern)) on wasm-gc.
/// Works around MoonBit compiler not emitting ref.as_non_null when converting
/// externref to (ref extern). We go through String? (also externref) and
/// unwrap which emits ref.as_non_null.
#cfg(target="wasm-gc")
fn jsvalue_as_nullable_string(v : JsValue) -> String? = "%identity"

///|
#cfg(target="wasm-gc")
fn jsvalue_to_string(v : JsValue) -> String {
  jsvalue_as_nullable_string(v).unwrap()
}

///|
/// Coerce any JavaScript value to a string (using '' + v).
/// On wasm-gc the FFI returns externref, then jsvalue_to_string converts to String.
#cfg(target="wasm-gc")
fn jsvalue_to_string_coerce(v : JsValue) -> JsValue = "JsValue" "toString"

///|
#cfg(target="wasm-gc")
pub fn JsValue::to_string(self : JsValue) -> String {
  jsvalue_to_string(jsvalue_to_string_coerce(self))
}

///|
/// Convert a JsValue containing a JavaScript string to a MoonBit String.
/// On wasm-gc this performs the necessary externref → (ref extern) conversion.
#cfg(target="wasm-gc")
pub fn JsValue::as_string(self : JsValue) -> String {
  jsvalue_to_string(self)
}

///|
/// Convert JsValue (externref) to String/JsAny ((ref extern)) for FromJsAny conversion.
/// Uses String? unwrap trick to emit ref.as_non_null on wasm-gc.
#cfg(target="wasm-gc")
fn jsvalue_to_jsany(v : JsValue) -> String {
  jsvalue_as_nullable_string(v).unwrap()
}
