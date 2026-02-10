extern "js" fn navigation_destination_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
fn navigation_destination_url_ffi(obj: JsValue) -> String {
  navigation_destination_url_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_destination_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.key"

///|
fn navigation_destination_key_ffi(obj: JsValue) -> String {
  navigation_destination_key_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_destination_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.id"

///|
fn navigation_destination_id_ffi(obj: JsValue) -> String {
  navigation_destination_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_destination_index_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.index"

///|
fn navigation_destination_index_ffi(obj: JsValue) -> Int64 {
  navigation_destination_index_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_destination_same_document_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sameDocument"

///|
fn navigation_destination_same_document_ffi(obj: JsValue) -> Bool {
  navigation_destination_same_document_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_destination_get_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getState()"

///|
fn navigation_destination_get_state_ffi(obj: JsValue) -> JsValue {
  navigation_destination_get_state_ffi_js(obj).unsafe_cast()
}