///|
/// Get JavaScript undefined value
pub extern "js" fn JsValue::undefined() -> JsValue = "() => undefined"

///|
extern "js" fn js_null_ffi() -> JsValue = "() => null"

///|
pub extern "js" fn JsValue::is_null(self : JsValue) -> Bool = "(v) => v === null"
