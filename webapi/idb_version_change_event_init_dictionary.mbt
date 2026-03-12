// Do not edit. This file is generated.
// MoonBit type: IDBVersionChangeEventInit
// Specifications: dom.idl, IndexedDB.idl

///|
/// [IDBVersionChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEventInit)
#external
pub type IDBVersionChangeEventInit

///|
pub impl TJsValue for IDBVersionChangeEventInit with to_js(
  self : IDBVersionChangeEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBVersionChangeEventInit with from_js_any(value : JsAny) -> IDBVersionChangeEventInit = "%identity"

///|
pub fn IDBVersionChangeEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  old_version? : UInt64,
  new_version? : UInt64,
) -> IDBVersionChangeEventInit {
  idb_version_change_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(old_version),
    opt_to_js(new_version),
  )
}

///|
pub fn IDBVersionChangeEventInit::empty() -> IDBVersionChangeEventInit {
  idb_version_change_event_init_empty_ffi()
}

///|
pub fn IDBVersionChangeEventInit::bubbles(
  self : IDBVersionChangeEventInit,
) -> Bool? {
  idb_version_change_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IDBVersionChangeEventInit::cancelable(
  self : IDBVersionChangeEventInit,
) -> Bool? {
  idb_version_change_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IDBVersionChangeEventInit::composed(
  self : IDBVersionChangeEventInit,
) -> Bool? {
  idb_version_change_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IDBVersionChangeEventInit::old_version(
  self : IDBVersionChangeEventInit,
) -> UInt64? {
  idb_version_change_event_init_get_old_version_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IDBVersionChangeEventInit::new_version(
  self : IDBVersionChangeEventInit,
) -> UInt64? {
  idb_version_change_event_init_get_new_version_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn idb_version_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_version : JsValue,
  new_version : JsValue,
) -> IDBVersionChangeEventInit =
  #|(bubbles, cancelable, composed, oldVersion, newVersion) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (oldVersion !== undefined) obj.oldVersion = oldVersion;
  #|  if (newVersion !== undefined) obj.newVersion = newVersion;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn idb_version_change_event_init_empty_ffi() -> IDBVersionChangeEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn idb_version_change_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn idb_version_change_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn idb_version_change_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn idb_version_change_event_init_get_old_version_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.oldVersion"

///|
#cfg(target="js")
extern "js" fn idb_version_change_event_init_get_new_version_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.newVersion"

///|
#cfg(target="wasm-gc")
fn idb_version_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_version : JsValue,
  new_version : JsValue,
) -> IDBVersionChangeEventInit = "webapi_IDBVersionChangeEventInit" "new"

///|
#cfg(target="wasm-gc")
fn idb_version_change_event_init_empty_ffi() -> IDBVersionChangeEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn idb_version_change_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_IDBVersionChangeEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn idb_version_change_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_IDBVersionChangeEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn idb_version_change_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_IDBVersionChangeEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn idb_version_change_event_init_get_old_version_ffi(obj : JsValue) -> JsValue = "webapi_IDBVersionChangeEventInit" "get_oldVersion"

///|
#cfg(target="wasm-gc")
fn idb_version_change_event_init_get_new_version_ffi(obj : JsValue) -> JsValue = "webapi_IDBVersionChangeEventInit" "get_newVersion"
