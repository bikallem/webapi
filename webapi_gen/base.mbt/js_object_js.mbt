///|
pub impl TJsValue for JsObject with to_js(self : JsObject) -> JsValue = "%identity"

///|
pub extern "js" fn JsObject::new() -> JsObject = "() => ({})"

///|
pub extern "js" fn JsObject::set(self : JsObject, key : String, value : JsValue) -> JsObject =
  "(obj, key, value) => { obj[key] = value; return obj; }"
