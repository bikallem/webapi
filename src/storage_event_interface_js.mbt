///|
extern "js" fn storage_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> StorageEvent = "(type_, event_init_dict) => new StorageEvent(type_, event_init_dict)"

///|
extern "js" fn storage_event_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
fn storage_event_key_ffi(obj : JsValue) -> String {
  storage_event_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_event_old_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oldValue"

///|
fn storage_event_old_value_ffi(obj : JsValue) -> String {
  storage_event_old_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_event_new_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.newValue"

///|
fn storage_event_new_value_ffi(obj : JsValue) -> String {
  storage_event_new_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_event_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
fn storage_event_url_ffi(obj : JsValue) -> String {
  storage_event_url_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_event_storage_area_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.storageArea"

///|
fn storage_event_storage_area_ffi(obj : JsValue) -> Storage {
  storage_event_storage_area_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_event_init_storage_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  key : JsValue,
  old_value : JsValue,
  new_value : JsValue,
  url : JsValue,
  storage_area : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable, key, old_value, new_value, url, storage_area) => obj.initStorageEvent(type_, bubbles, cancelable, key, old_value, new_value, url, storage_area)"
