// Do not edit. This file is generated.
// MoonBit type: HashChangeEventInit
// Specifications: dom.idl, html.idl

/// [HashChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEventInit)
#external
pub type HashChangeEventInit

pub impl TJsValue for HashChangeEventInit with to_js(self: HashChangeEventInit) -> JsValue = "%identity"

pub impl FromJsAny for HashChangeEventInit with from_js_any(value : JsAny) -> HashChangeEventInit = "%identity"

pub fn HashChangeEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
old_url? : String, 
new_url? : String) -> HashChangeEventInit {
  hash_change_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(old_url), opt_to_js(new_url))
}

pub fn HashChangeEventInit::empty() -> HashChangeEventInit { hash_change_event_init_empty_ffi() }

pub fn HashChangeEventInit::bubbles(self : HashChangeEventInit) -> Bool? {
  hash_change_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::cancelable(self : HashChangeEventInit) -> Bool? {
  hash_change_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::composed(self : HashChangeEventInit) -> Bool? {
  hash_change_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::old_url(self : HashChangeEventInit) -> String? {
  hash_change_event_init_get_old_url_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::new_url(self : HashChangeEventInit) -> String? {
  hash_change_event_init_get_new_url_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn hash_change_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, old_url: JsValue, new_url: JsValue) -> HashChangeEventInit = 
#|(bubbles, cancelable, composed, oldURL, newURL) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (oldURL !== undefined) obj.oldURL = oldURL;
#|  if (newURL !== undefined) obj.newURL = newURL;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn hash_change_event_init_empty_ffi() -> HashChangeEventInit = "() => {}"

#cfg(target="js")
extern "js" fn hash_change_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn hash_change_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn hash_change_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn hash_change_event_init_get_old_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oldURL"

#cfg(target="js")
extern "js" fn hash_change_event_init_get_new_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.newURL"

#cfg(target="wasm-gc")
fn hash_change_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, old_url: JsValue, new_url: JsValue) -> HashChangeEventInit = "webapi_HashChangeEventInit" "new"

#cfg(target="wasm-gc")
fn hash_change_event_init_empty_ffi() -> HashChangeEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn hash_change_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn hash_change_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn hash_change_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_composed"

#cfg(target="wasm-gc")
fn hash_change_event_init_get_old_url_ffi(obj: JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_oldURL"

#cfg(target="wasm-gc")
fn hash_change_event_init_get_new_url_ffi(obj: JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_newURL"