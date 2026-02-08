///|
/// Get JavaScript undefined value
pub fn JsValue::undefined() -> JsValue = "JsValue" "undefined"

///|
fn js_null_ffi() -> JsValue = "JsNull" "null"

///|
pub fn JsValue::is_null(self : JsValue) -> Bool = "JsValue" "isNull"
