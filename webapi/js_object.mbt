///|
/// JsObject - Builder for plain JavaScript objects with arbitrary properties.
/// Useful for constructing objects that aren't covered by WebIDL dictionaries
/// (e.g., Web Animations keyframes with CSS properties).
#external
pub type JsObject

///|
pub impl FromJsAny for JsObject with from_js_any(value : JsAny) -> JsObject = "%identity"

///|
pub impl TJsValue for JsObject with to_js(self : JsObject) -> JsValue = "%identity"

// ---- Js mappings ----

///|
#cfg(target="js")
extern "js" fn js_object_new_ffi() -> JsObject = "() => ({})"

///|
#cfg(target="js")
extern "js" fn js_object_set_ffi(
  obj : JsObject,
  key : String,
  value : JsValue,
) -> Unit = "(obj, key, value) => obj[key] = value"

///|
#cfg(target="js")
extern "js" fn js_object_get_ffi(obj : JsObject, key : String) -> JsValue = "(obj, key) => obj[key]"

// ---- Wasm mappings ----

///|
#cfg(target="wasm-gc")
fn js_object_new_ffi() -> JsObject = "webapi_JsObject" "create"

///|
#cfg(target="wasm-gc")
fn js_object_set_ffi(obj : JsObject, key : String, value : JsValue) -> Unit = "webapi_JsObject" "set"

///|
#cfg(target="wasm-gc")
fn js_object_get_ffi(obj : JsObject, key : String) -> JsValue = "webapi_JsObject" "get"

///|
pub fn JsObject::new() -> JsObject {
  js_object_new_ffi()
}

///|
pub fn JsObject::set(self : JsObject, key : String, value : JsValue) -> Unit {
  js_object_set_ffi(self, key, value)
}

///|
pub fn JsObject::get(self : JsObject, key : String) -> JsValue {
  js_object_get_ffi(self, key)
}
