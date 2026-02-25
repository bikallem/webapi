///|
extern "js" fn hash_change_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> HashChangeEvent = "(type_, event_init_dict) => new HashChangeEvent(type_, event_init_dict)"

///|
extern "js" fn hash_change_event_old_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oldURL"

///|
fn hash_change_event_old_url_ffi(obj : JsValue) -> String {
  hash_change_event_old_url_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn hash_change_event_new_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.newURL"

///|
fn hash_change_event_new_url_ffi(obj : JsValue) -> String {
  hash_change_event_new_url_ffi_js(obj).unsafe_cast()
}
