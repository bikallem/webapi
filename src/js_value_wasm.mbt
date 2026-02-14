///|
/// Get JavaScript undefined value
pub fn JsValue::undefined() -> JsValue = "JsValue" "undefined"

///|
fn js_null_ffi() -> JsValue = "JsNull" "null"

///|
pub fn JsValue::is_null(self : JsValue) -> Bool = "JsValue" "isNull"

///|
/// Convert JsValue (externref) to String ((ref extern)) on wasm-gc.
/// Works around MoonBit compiler not emitting ref.as_non_null when converting
/// externref to (ref extern). We go through String? (also externref) and
/// unwrap which emits ref.as_non_null.
fn jsvalue_as_nullable_string(v : JsValue) -> String? = "%identity"

///|
fn jsvalue_to_string(v : JsValue) -> String {
  jsvalue_as_nullable_string(v).unwrap()
}

///|
/// Coerce any JavaScript value to a string (using '' + v).
/// On wasm-gc the FFI returns externref, then jsvalue_to_string converts to String.
fn jsvalue_to_string_coerce(v : JsValue) -> JsValue = "JsValue" "toString"

///|
pub fn JsValue::to_string(self : JsValue) -> String {
  jsvalue_to_string(jsvalue_to_string_coerce(self))
}

///|
/// Convert a JsValue containing a JavaScript string to a MoonBit String.
/// On wasm-gc this performs the necessary externref → (ref extern) conversion.
pub fn JsValue::as_string(self : JsValue) -> String {
  jsvalue_to_string(self)
}

///|
/// Convert JsValue (externref) to String/JsAny ((ref extern)) for FromJsAny conversion.
/// Uses String? unwrap trick to emit ref.as_non_null on wasm-gc.
fn jsvalue_to_jsany(v : JsValue) -> String {
  jsvalue_as_nullable_string(v).unwrap()
}
