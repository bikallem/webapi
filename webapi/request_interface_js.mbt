extern "js" fn request_new_ffi(input: JsValue, init: JsValue) -> Request = "(input, init) => new Request(input, init)"

extern "js" fn request_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.method"

///|
fn request_method_ffi(obj: JsValue) -> String {
  request_method_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
fn request_url_ffi(obj: JsValue) -> String {
  request_url_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_headers_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.headers"

///|
fn request_headers_ffi(obj: JsValue) -> Headers {
  request_headers_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_destination_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.destination"

///|
fn request_destination_ffi(obj: JsValue) -> RequestDestination {
  RequestDestination::from_unchecked(request_destination_ffi_js(obj).unsafe_cast())
}

extern "js" fn request_referrer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrer"

///|
fn request_referrer_ffi(obj: JsValue) -> String {
  request_referrer_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_referrer_policy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
fn request_referrer_policy_ffi(obj: JsValue) -> ReferrerPolicy {
  ReferrerPolicy::from_unchecked(request_referrer_policy_ffi_js(obj).unsafe_cast())
}

extern "js" fn request_mode_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.mode"

///|
fn request_mode_ffi(obj: JsValue) -> RequestMode {
  RequestMode::from_unchecked(request_mode_ffi_js(obj).unsafe_cast())
}

extern "js" fn request_credentials_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.credentials"

///|
fn request_credentials_ffi(obj: JsValue) -> RequestCredentials {
  RequestCredentials::from_unchecked(request_credentials_ffi_js(obj).unsafe_cast())
}

extern "js" fn request_cache_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cache"

///|
fn request_cache_ffi(obj: JsValue) -> RequestCache {
  RequestCache::from_unchecked(request_cache_ffi_js(obj).unsafe_cast())
}

extern "js" fn request_redirect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.redirect"

///|
fn request_redirect_ffi(obj: JsValue) -> RequestRedirect {
  RequestRedirect::from_unchecked(request_redirect_ffi_js(obj).unsafe_cast())
}

extern "js" fn request_integrity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.integrity"

///|
fn request_integrity_ffi(obj: JsValue) -> String {
  request_integrity_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_keepalive_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.keepalive"

///|
fn request_keepalive_ffi(obj: JsValue) -> Bool {
  request_keepalive_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_is_reload_navigation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isReloadNavigation"

///|
fn request_is_reload_navigation_ffi(obj: JsValue) -> Bool {
  request_is_reload_navigation_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_is_history_navigation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isHistoryNavigation"

///|
fn request_is_history_navigation_ffi(obj: JsValue) -> Bool {
  request_is_history_navigation_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_signal_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.signal"

///|
fn request_signal_ffi(obj: JsValue) -> AbortSignal {
  request_signal_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_duplex_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.duplex"

///|
fn request_duplex_ffi(obj: JsValue) -> RequestDuplex {
  RequestDuplex::from_unchecked(request_duplex_ffi_js(obj).unsafe_cast())
}

extern "js" fn request_clone_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.clone()"

///|
fn request_clone_ffi(obj: JsValue) -> Request {
  request_clone_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_body_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.body"

///|
fn request_body_ffi(obj: JsValue) -> ReadableStream {
  request_body_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_body_used_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bodyUsed"

///|
fn request_body_used_ffi(obj: JsValue) -> Bool {
  request_body_used_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_array_buffer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

///|
fn request_array_buffer_ffi(obj: JsValue) -> JsPromise[ArrayBuffer] {
  request_array_buffer_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_blob_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.blob()"

///|
fn request_blob_ffi(obj: JsValue) -> JsPromise[Blob] {
  request_blob_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_bytes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"

///|
fn request_bytes_ffi(obj: JsValue) -> JsPromise[Uint8Array] {
  request_bytes_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_form_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formData()"

///|
fn request_form_data_ffi(obj: JsValue) -> JsPromise[FormData] {
  request_form_data_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.json()"

///|
fn request_json_ffi(obj: JsValue) -> JsPromise[JsValue] {
  request_json_ffi_js(obj).unsafe_cast()
}

extern "js" fn request_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.text()"

///|
fn request_text_ffi(obj: JsValue) -> JsPromise[String] {
  request_text_ffi_js(obj).unsafe_cast()
}