extern "js" fn fetch_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> FetchEvent = "(type_, event_init_dict) => new FetchEvent(type_, event_init_dict)"

extern "js" fn fetch_event_request_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.request"

///|
fn fetch_event_request_ffi(obj: JsValue) -> Request {
  fetch_event_request_ffi_js(obj).unsafe_cast()
}

extern "js" fn fetch_event_preload_response_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.preloadResponse"

///|
fn fetch_event_preload_response_ffi(obj: JsValue) -> JsPromise[JsValue] {
  fetch_event_preload_response_ffi_js(obj).unsafe_cast()
}

extern "js" fn fetch_event_client_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.clientId"

///|
fn fetch_event_client_id_ffi(obj: JsValue) -> String {
  fetch_event_client_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn fetch_event_resulting_client_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.resultingClientId"

///|
fn fetch_event_resulting_client_id_ffi(obj: JsValue) -> String {
  fetch_event_resulting_client_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn fetch_event_replaces_client_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.replacesClientId"

///|
fn fetch_event_replaces_client_id_ffi(obj: JsValue) -> String {
  fetch_event_replaces_client_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn fetch_event_handled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.handled"

///|
fn fetch_event_handled_ffi(obj: JsValue) -> JsPromise[JsValue] {
  fetch_event_handled_ffi_js(obj).unsafe_cast()
}

extern "js" fn fetch_event_respond_with_ffi(obj: JsValue, r: JsValue) -> Unit = "(obj, r) => obj.respondWith(r)"