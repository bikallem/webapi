// Do not edit. This file is generated.
// MoonBit type: StorageEventInit
// Specifications: html.idl, dom.idl

///|
/// [StorageEventInit](https://developer.mozilla.org/en-US/docs/Web/API/StorageEventInit)
#external
pub type StorageEventInit

///|
pub impl TJsValue for StorageEventInit with to_js(self : StorageEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for StorageEventInit with from_js_any(value : JsAny) -> StorageEventInit = "%identity"

///|
pub fn StorageEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  key? : String,
  old_value? : String,
  new_value? : String,
  url? : String,
  storage_area? : &TStorage,
) -> StorageEventInit {
  storage_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(key),
    opt_to_js(old_value),
    opt_to_js(new_value),
    opt_to_js(url),
    opt_to_js(storage_area),
  )
}

///|
pub fn StorageEventInit::empty() -> StorageEventInit {
  storage_event_init_empty_ffi()
}

///|
pub fn StorageEventInit::bubbles(self : StorageEventInit) -> Bool? {
  storage_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEventInit::cancelable(self : StorageEventInit) -> Bool? {
  storage_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEventInit::composed(self : StorageEventInit) -> Bool? {
  storage_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEventInit::key(self : StorageEventInit) -> String? {
  storage_event_init_get_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEventInit::old_value(self : StorageEventInit) -> String? {
  storage_event_init_get_old_value_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEventInit::new_value(self : StorageEventInit) -> String? {
  storage_event_init_get_new_value_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEventInit::url(self : StorageEventInit) -> String? {
  storage_event_init_get_url_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEventInit::storage_area(self : StorageEventInit) -> Storage? {
  storage_event_init_get_storage_area_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn storage_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  key : JsValue,
  old_value : JsValue,
  new_value : JsValue,
  url : JsValue,
  storage_area : JsValue,
) -> StorageEventInit =
  #|(bubbles, cancelable, composed, key, oldValue, newValue, url, storageArea) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (key !== undefined) obj.key = key;
  #|  if (oldValue !== undefined) obj.oldValue = oldValue;
  #|  if (newValue !== undefined) obj.newValue = newValue;
  #|  if (url !== undefined) obj.url = url;
  #|  if (storageArea !== undefined) obj.storageArea = storageArea;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn storage_event_init_empty_ffi() -> StorageEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_old_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oldValue"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_new_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.newValue"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_url_ffi(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
extern "js" fn storage_event_init_get_storage_area_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.storageArea"

///|
#cfg(target="wasm-gc")
fn storage_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  key : JsValue,
  old_value : JsValue,
  new_value : JsValue,
  url : JsValue,
  storage_area : JsValue,
) -> StorageEventInit = "webapi_StorageEventInit" "new"

///|
#cfg(target="wasm-gc")
fn storage_event_init_empty_ffi() -> StorageEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_key_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_key"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_old_value_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_oldValue"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_new_value_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_newValue"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_url_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_url"

///|
#cfg(target="wasm-gc")
fn storage_event_init_get_storage_area_ffi(obj : JsValue) -> JsValue = "webapi_StorageEventInit" "get_storageArea"
