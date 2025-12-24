///|
#external
pub type JsUndefined

///|
pub extern "js" fn undefined() -> JsUndefined = "() => undefined"

///|
pub impl TJsValue for JsUndefined with to_js(self : JsUndefined) -> JsValue = "%identity"
