///|
pub impl TJsValue for JsObject with to_js(self : JsObject) -> JsValue = "%identity"

///|
fn js_object_new_ffi() -> JsValue = "webapi_JsObject" "create"

///|
pub fn JsObject::new() -> JsObject {
  js_object_new_ffi().unsafe_cast()
}

///|
fn js_object_set_ffi(obj : JsValue, key : String, value : JsValue) -> JsValue = "webapi_JsObject" "set"

///|
pub fn JsObject::set(self : JsObject, key : String, value : JsValue) -> JsObject {
  js_object_set_ffi(TJsValue::to_js(self), key, value).unsafe_cast()
}
