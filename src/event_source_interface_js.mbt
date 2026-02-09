///|
extern "js" fn event_source_new_ffi(
  url : JsValue,
  event_source_init_dict : JsValue,
) -> EventSource = "(url, event_source_init_dict) => new EventSource(url, event_source_init_dict)"

///|
extern "js" fn event_source_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
fn event_source_url_ffi(obj : JsValue) -> String {
  event_source_url_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_source_with_credentials_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.withCredentials"

///|
fn event_source_with_credentials_ffi(obj : JsValue) -> Bool {
  event_source_with_credentials_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_source_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
fn event_source_ready_state_ffi(obj : JsValue) -> UInt {
  event_source_ready_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_source_onopen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onopen"

///|
fn event_source_onopen_ffi(obj : JsValue) -> EventHandler {
  event_source_onopen_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_source_set_onopen_ffi(
  obj : JsValue,
  onopen : JsValue,
) -> Unit = "(obj, onopen) => { obj.onopen = onopen; }"

///|
extern "js" fn event_source_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
fn event_source_onmessage_ffi(obj : JsValue) -> EventHandler {
  event_source_onmessage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_source_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
extern "js" fn event_source_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn event_source_onerror_ffi(obj : JsValue) -> EventHandler {
  event_source_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_source_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn event_source_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"
