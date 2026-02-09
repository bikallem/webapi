///|
extern "js" fn navigation_history_entry_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
fn navigation_history_entry_url_ffi(obj : JsValue) -> String {
  navigation_history_entry_url_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_history_entry_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
fn navigation_history_entry_key_ffi(obj : JsValue) -> String {
  navigation_history_entry_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_history_entry_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn navigation_history_entry_id_ffi(obj : JsValue) -> String {
  navigation_history_entry_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_history_entry_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.index"

///|
fn navigation_history_entry_index_ffi(obj : JsValue) -> Int64 {
  navigation_history_entry_index_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_history_entry_same_document_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.sameDocument"

///|
fn navigation_history_entry_same_document_ffi(obj : JsValue) -> Bool {
  navigation_history_entry_same_document_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_history_entry_get_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getState()"

///|
fn navigation_history_entry_get_state_ffi(obj : JsValue) -> JsValue {
  navigation_history_entry_get_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_history_entry_ondispose_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ondispose"

///|
fn navigation_history_entry_ondispose_ffi(obj : JsValue) -> EventHandler {
  navigation_history_entry_ondispose_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_history_entry_set_ondispose_ffi(
  obj : JsValue,
  ondispose : JsValue,
) -> Unit = "(obj, ondispose) => { obj.ondispose = ondispose; }"
