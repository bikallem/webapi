///|
fn fetch_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FetchEvent = "webapi_FetchEvent" "new"

///|
fn fetch_event_request_ffi(obj : JsValue) -> Request = "webapi_FetchEvent" "get_request"

///|
fn fetch_event_preload_response_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_preloadResponse"

///|
fn fetch_event_preload_response_ffi(obj : JsValue) -> JsPromise[JsValue] {
  fetch_event_preload_response_ffi_wasm(obj).unsafe_cast()
}

///|
fn fetch_event_client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_clientId"

///|
fn fetch_event_client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(fetch_event_client_id_ffi_wasm(obj))
}

///|
fn fetch_event_resulting_client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_resultingClientId"

///|
fn fetch_event_resulting_client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(fetch_event_resulting_client_id_ffi_wasm(obj))
}

///|
fn fetch_event_replaces_client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_replacesClientId"

///|
fn fetch_event_replaces_client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(fetch_event_replaces_client_id_ffi_wasm(obj))
}

///|
fn fetch_event_handled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FetchEvent" "get_handled"

///|
fn fetch_event_handled_ffi(obj : JsValue) -> JsPromise[JsValue] {
  fetch_event_handled_ffi_wasm(obj).unsafe_cast()
}

///|
fn fetch_event_respond_with_ffi(obj : JsValue, r : JsValue) -> Unit = "webapi_FetchEvent" "respondWith"
