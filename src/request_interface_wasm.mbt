///|
fn request_new_ffi(input : JsValue, init : JsValue) -> Request = "webapi_Request" "new"

///|
fn request_method_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "get_method"

///|
fn request_method_ffi(obj : JsValue) -> String {
  jsvalue_to_string(request_method_ffi_wasm(obj))
}

///|
fn request_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "get_url"

///|
fn request_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(request_url_ffi_wasm(obj))
}

///|
fn request_headers_ffi(obj : JsValue) -> Headers = "webapi_Request" "get_headers"

///|
fn request_destination_ffi(obj : JsValue) -> RequestDestination = "webapi_Request" "get_destination"

///|
fn request_referrer_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "get_referrer"

///|
fn request_referrer_ffi(obj : JsValue) -> String {
  jsvalue_to_string(request_referrer_ffi_wasm(obj))
}

///|
fn request_referrer_policy_ffi(obj : JsValue) -> ReferrerPolicy = "webapi_Request" "get_referrerPolicy"

///|
fn request_mode_ffi(obj : JsValue) -> RequestMode = "webapi_Request" "get_mode"

///|
fn request_credentials_ffi(obj : JsValue) -> RequestCredentials = "webapi_Request" "get_credentials"

///|
fn request_cache_ffi(obj : JsValue) -> RequestCache = "webapi_Request" "get_cache"

///|
fn request_redirect_ffi(obj : JsValue) -> RequestRedirect = "webapi_Request" "get_redirect"

///|
fn request_integrity_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "get_integrity"

///|
fn request_integrity_ffi(obj : JsValue) -> String {
  jsvalue_to_string(request_integrity_ffi_wasm(obj))
}

///|
fn request_keepalive_ffi(obj : JsValue) -> Bool = "webapi_Request" "get_keepalive"

///|
fn request_is_reload_navigation_ffi(obj : JsValue) -> Bool = "webapi_Request" "get_isReloadNavigation"

///|
fn request_is_history_navigation_ffi(obj : JsValue) -> Bool = "webapi_Request" "get_isHistoryNavigation"

///|
fn request_signal_ffi(obj : JsValue) -> AbortSignal = "webapi_Request" "get_signal"

///|
fn request_duplex_ffi(obj : JsValue) -> RequestDuplex = "webapi_Request" "get_duplex"

///|
fn request_clone_ffi(obj : JsValue) -> Request = "webapi_Request" "clone"

///|
fn request_body_ffi(obj : JsValue) -> ReadableStream = "webapi_Request" "get_body"

///|
fn request_body_used_ffi(obj : JsValue) -> Bool = "webapi_Request" "get_bodyUsed"

///|
fn request_array_buffer_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "arrayBuffer"

///|
fn request_array_buffer_ffi(obj : JsValue) -> @js_async.Promise[ArrayBuffer] {
  request_array_buffer_ffi_wasm(obj).unsafe_cast()
}

///|
fn request_blob_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "blob"

///|
fn request_blob_ffi(obj : JsValue) -> @js_async.Promise[Blob] {
  request_blob_ffi_wasm(obj).unsafe_cast()
}

///|
fn request_bytes_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "bytes"

///|
fn request_bytes_ffi(obj : JsValue) -> @js_async.Promise[Uint8Array] {
  request_bytes_ffi_wasm(obj).unsafe_cast()
}

///|
fn request_form_data_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "formData"

///|
fn request_form_data_ffi(obj : JsValue) -> @js_async.Promise[FormData] {
  request_form_data_ffi_wasm(obj).unsafe_cast()
}

///|
fn request_json_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "json"

///|
fn request_json_ffi(obj : JsValue) -> @js_async.Promise[JsValue] {
  request_json_ffi_wasm(obj).unsafe_cast()
}

///|
fn request_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Request" "text"

///|
fn request_text_ffi(obj : JsValue) -> @js_async.Promise[String] {
  request_text_ffi_wasm(obj).unsafe_cast()
}
