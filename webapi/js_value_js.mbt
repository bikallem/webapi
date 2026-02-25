///|
/// Get JavaScript undefined value
pub extern "js" fn JsValue::undefined() -> JsValue = "() => undefined"

///|
extern "js" fn js_null_ffi() -> JsValue = "() => null"

///|
pub extern "js" fn JsValue::is_null(self : JsValue) -> Bool = "(v) => v === null || v === undefined"

///|
/// Coerce any JavaScript value to a string (using '' + v).
pub extern "js" fn JsValue::to_string(self : JsValue) -> String = "(v) => '' + v"

///|
/// Convert JsValue to String (JsAny) for FromJsAny conversion. Identity on JS target.
extern "js" fn jsvalue_to_jsany(v : JsValue) -> String = "(v) => v"

///|
/// Convert a JsValue containing a JavaScript string to a MoonBit String.
pub fn JsValue::as_string(self : JsValue) -> String {
  self.into()
}
