///|
/// JsObject - Builder for plain JavaScript objects with arbitrary properties.
/// Useful for constructing objects that aren't covered by WebIDL dictionaries
/// (e.g., Web Animations keyframes with CSS properties).
#external
pub type JsObject

///|
pub impl FromJsAny for JsObject with from_js_any(value : JsAny) -> JsObject = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for JsObject with to_js(self : JsObject) -> JsValue = "%identity"

///|
#cfg(target="js")
pub extern "js" fn JsObject::new() -> JsObject = "() => ({})"

///|
#cfg(target="js")
pub extern "js" fn JsObject::set(
  self : JsObject,
  key : String,
  value : JsValue,
) -> JsObject = "(obj, key, value) => { obj[key] = value; return obj; }"

///|
#cfg(target="js")
pub extern "js" fn JsObject::get(self : JsObject, key : String) -> JsValue = "(obj, key) => obj[key]"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for JsObject with to_js(self : JsObject) -> JsValue = "%identity"

///|
#cfg(target="wasm-gc")
fn js_object_new_ffi() -> JsValue = "webapi_JsObject" "create"

///|
#cfg(target="wasm-gc")
pub fn JsObject::new() -> JsObject {
  js_object_new_ffi().unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn js_object_set_ffi(obj : JsValue, key : String, value : JsValue) -> JsValue = "webapi_JsObject" "set"

///|
#cfg(target="wasm-gc")
pub fn JsObject::set(
  self : JsObject,
  key : String,
  value : JsValue,
) -> JsObject {
  js_object_set_ffi(TJsValue::to_js(self), key, value).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn js_object_get_ffi(obj : JsValue, key : String) -> JsValue = "webapi_JsObject" "get"

///|
#cfg(target="wasm-gc")
pub fn JsObject::get(self : JsObject, key : String) -> JsValue {
  js_object_get_ffi(TJsValue::to_js(self), key)
}
