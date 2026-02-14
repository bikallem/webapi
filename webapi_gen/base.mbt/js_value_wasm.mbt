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
/// Convert a JsValue containing a JavaScript string to a MoonBit String.
/// On wasm-gc this performs the necessary externref → (ref extern) conversion.
pub fn JsValue::as_string(self : JsValue) -> String {
  jsvalue_to_string(self)
}
