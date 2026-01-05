// Do not edit. This file is generated.
// MoonBit type: Request
// Specifications: fetch.idl

///|
#external
pub type Request

///|
pub impl TJsValue for Request with to_js(self : Request) -> JsValue = "%identity"

///|
pub fn[T : TRequest] Request::into(self : Request) -> T = "%identity"

///|
pub impl TRequest for Request

///|
extern "js" fn request_new_ffi(input : JsValue, init : JsValue) -> Request = "(input, init) => new Request(input, init)"

///|
pub fn Request::new(
  input : RequestInfo,
  init? : RequestInit = RequestInit::empty(),
) -> Request {
  request_new_ffi(TJsValue::to_js(input), TJsValue::to_js(init))
}

///|
pub trait TRequest: TJsValue {
  method_(self : Self) -> String = _
  url(self : Self) -> String = _
  headers(self : Self) -> Headers = _
  destination(self : Self) -> RequestDestination = _
  referrer(self : Self) -> String = _
  referrer_policy(self : Self) -> ReferrerPolicy = _
  mode(self : Self) -> RequestMode = _
  credentials(self : Self) -> RequestCredentials = _
  cache(self : Self) -> RequestCache = _
  redirect(self : Self) -> RequestRedirect = _
  integrity(self : Self) -> String = _
  keepalive(self : Self) -> Bool = _
  is_reload_navigation(self : Self) -> Bool = _
  is_history_navigation(self : Self) -> Bool = _
  signal(self : Self) -> AbortSignal = _
  duplex(self : Self) -> RequestDuplex = _
  clone(self : Self) -> Request = _
  body(self : Self) -> ReadableStream = _
  body_used(self : Self) -> Bool = _
  array_buffer(self : Self) -> JsPromise[ArrayBuffer] = _
  blob(self : Self) -> JsPromise[Blob] = _
  bytes(self : Self) -> JsPromise[Uint8Array] = _
  form_data(self : Self) -> JsPromise[FormData] = _
  json(self : Self) -> JsPromise[JsValue] = _
  text(self : Self) -> JsPromise[String] = _
}

///|
extern "js" fn request_method_ffi(obj : JsValue) -> String = "(obj) => obj.method"

///|
impl TRequest with method_(self : Self) -> String {
  request_method_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_url_ffi(obj : JsValue) -> String = "(obj) => obj.url"

///|
impl TRequest with url(self : Self) -> String {
  request_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_headers_ffi(obj : JsValue) -> Headers = "(obj) => obj.headers"

///|
impl TRequest with headers(self : Self) -> Headers {
  request_headers_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_destination_ffi(obj : JsValue) -> RequestDestination = "(obj) => obj.destination"

///|
impl TRequest with destination(self : Self) -> RequestDestination {
  request_destination_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_referrer_ffi(obj : JsValue) -> String = "(obj) => obj.referrer"

///|
impl TRequest with referrer(self : Self) -> String {
  request_referrer_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_referrer_policy_ffi(obj : JsValue) -> ReferrerPolicy = "(obj) => obj.referrerPolicy"

///|
impl TRequest with referrer_policy(self : Self) -> ReferrerPolicy {
  request_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_mode_ffi(obj : JsValue) -> RequestMode = "(obj) => obj.mode"

///|
impl TRequest with mode(self : Self) -> RequestMode {
  request_mode_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_credentials_ffi(obj : JsValue) -> RequestCredentials = "(obj) => obj.credentials"

///|
impl TRequest with credentials(self : Self) -> RequestCredentials {
  request_credentials_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_cache_ffi(obj : JsValue) -> RequestCache = "(obj) => obj.cache"

///|
impl TRequest with cache(self : Self) -> RequestCache {
  request_cache_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_redirect_ffi(obj : JsValue) -> RequestRedirect = "(obj) => obj.redirect"

///|
impl TRequest with redirect(self : Self) -> RequestRedirect {
  request_redirect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_integrity_ffi(obj : JsValue) -> String = "(obj) => obj.integrity"

///|
impl TRequest with integrity(self : Self) -> String {
  request_integrity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_keepalive_ffi(obj : JsValue) -> Bool = "(obj) => obj.keepalive"

///|
impl TRequest with keepalive(self : Self) -> Bool {
  request_keepalive_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_is_reload_navigation_ffi(obj : JsValue) -> Bool = "(obj) => obj.isReloadNavigation"

///|
impl TRequest with is_reload_navigation(self : Self) -> Bool {
  request_is_reload_navigation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_is_history_navigation_ffi(obj : JsValue) -> Bool = "(obj) => obj.isHistoryNavigation"

///|
impl TRequest with is_history_navigation(self : Self) -> Bool {
  request_is_history_navigation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_signal_ffi(obj : JsValue) -> AbortSignal = "(obj) => obj.signal"

///|
impl TRequest with signal(self : Self) -> AbortSignal {
  request_signal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_duplex_ffi(obj : JsValue) -> RequestDuplex = "(obj) => obj.duplex"

///|
impl TRequest with duplex(self : Self) -> RequestDuplex {
  request_duplex_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_clone_ffi(obj : JsValue) -> Request = "(obj) => obj.clone(obj)"

///|
impl TRequest with clone(self : Self) -> Request {
  request_clone_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_body_ffi(obj : JsValue) -> ReadableStream = "(obj) => obj.body"

///|
impl TRequest with body(self : Self) -> ReadableStream {
  request_body_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_body_used_ffi(obj : JsValue) -> Bool = "(obj) => obj.bodyUsed"

///|
impl TRequest with body_used(self : Self) -> Bool {
  request_body_used_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_array_buffer_ffi(
  obj : JsValue,
) -> JsPromise[ArrayBuffer] = "(obj) => obj.arrayBuffer(obj)"

///|
impl TRequest with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  request_array_buffer_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_blob_ffi(obj : JsValue) -> JsPromise[Blob] = "(obj) => obj.blob(obj)"

///|
impl TRequest with blob(self : Self) -> JsPromise[Blob] {
  request_blob_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_bytes_ffi(obj : JsValue) -> JsPromise[Uint8Array] = "(obj) => obj.bytes(obj)"

///|
impl TRequest with bytes(self : Self) -> JsPromise[Uint8Array] {
  request_bytes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_form_data_ffi(obj : JsValue) -> JsPromise[FormData] = "(obj) => obj.formData(obj)"

///|
impl TRequest with form_data(self : Self) -> JsPromise[FormData] {
  request_form_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_json_ffi(obj : JsValue) -> JsPromise[JsValue] = "(obj) => obj.json(obj)"

///|
impl TRequest with json(self : Self) -> JsPromise[JsValue] {
  request_json_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn request_text_ffi(obj : JsValue) -> JsPromise[String] = "(obj) => obj.text(obj)"

///|
impl TRequest with text(self : Self) -> JsPromise[String] {
  request_text_ffi(TJsValue::to_js(self))
}
