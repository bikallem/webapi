// Do not edit. This file is generated.
// MoonBit type: Request
// Specifications: fetch.idl

///|
/// [Request](https://developer.mozilla.org/en-US/docs/Web/API/Request)
#external
pub type Request

///|
pub impl TJsValue for Request with to_js(self : Request) -> JsValue = "%identity"

///|
pub fn[T : TRequest] Request::into(self : Request) -> T = "%identity"

///|
pub impl TRequest for Request

///|
pub fn Request::new(
  input : RequestInfo,
  init? : RequestInit = RequestInit::empty(),
) -> Request {
  request_new_ffi(TJsValue::to_js(input), TJsValue::to_js(init))
}

///|
/// [Request](https://developer.mozilla.org/en-US/docs/Web/API/Request) interface.
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
  array_buffer(self : Self) -> @js_async.Promise[ArrayBuffer] = _
  blob(self : Self) -> @js_async.Promise[Blob] = _
  bytes(self : Self) -> @js_async.Promise[Uint8Array] = _
  form_data(self : Self) -> @js_async.Promise[FormData] = _
  json(self : Self) -> @js_async.Promise[JsValue] = _
  text(self : Self) -> @js_async.Promise[String] = _
}

///|
/// [Request.method](https://developer.mozilla.org/en-US/docs/Web/API/Request/method)
impl TRequest with method_(self : Self) -> String {
  request_method_ffi(TJsValue::to_js(self))
}

///|
/// [Request.url](https://developer.mozilla.org/en-US/docs/Web/API/Request/url)
impl TRequest with url(self : Self) -> String {
  request_url_ffi(TJsValue::to_js(self))
}

///|
/// [Request.headers](https://developer.mozilla.org/en-US/docs/Web/API/Request/headers)
impl TRequest with headers(self : Self) -> Headers {
  request_headers_ffi(TJsValue::to_js(self))
}

///|
/// [Request.destination](https://developer.mozilla.org/en-US/docs/Web/API/Request/destination)
impl TRequest with destination(self : Self) -> RequestDestination {
  request_destination_ffi(TJsValue::to_js(self))
}

///|
/// [Request.referrer](https://developer.mozilla.org/en-US/docs/Web/API/Request/referrer)
impl TRequest with referrer(self : Self) -> String {
  request_referrer_ffi(TJsValue::to_js(self))
}

///|
/// [Request.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/Request/referrerPolicy)
impl TRequest with referrer_policy(self : Self) -> ReferrerPolicy {
  request_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
/// [Request.mode](https://developer.mozilla.org/en-US/docs/Web/API/Request/mode)
impl TRequest with mode(self : Self) -> RequestMode {
  request_mode_ffi(TJsValue::to_js(self))
}

///|
/// [Request.credentials](https://developer.mozilla.org/en-US/docs/Web/API/Request/credentials)
impl TRequest with credentials(self : Self) -> RequestCredentials {
  request_credentials_ffi(TJsValue::to_js(self))
}

///|
/// [Request.cache](https://developer.mozilla.org/en-US/docs/Web/API/Request/cache)
impl TRequest with cache(self : Self) -> RequestCache {
  request_cache_ffi(TJsValue::to_js(self))
}

///|
/// [Request.redirect](https://developer.mozilla.org/en-US/docs/Web/API/Request/redirect)
impl TRequest with redirect(self : Self) -> RequestRedirect {
  request_redirect_ffi(TJsValue::to_js(self))
}

///|
/// [Request.integrity](https://developer.mozilla.org/en-US/docs/Web/API/Request/integrity)
impl TRequest with integrity(self : Self) -> String {
  request_integrity_ffi(TJsValue::to_js(self))
}

///|
/// [Request.keepalive](https://developer.mozilla.org/en-US/docs/Web/API/Request/keepalive)
impl TRequest with keepalive(self : Self) -> Bool {
  request_keepalive_ffi(TJsValue::to_js(self))
}

///|
/// [Request.isReloadNavigation](https://developer.mozilla.org/en-US/docs/Web/API/Request/isReloadNavigation)
impl TRequest with is_reload_navigation(self : Self) -> Bool {
  request_is_reload_navigation_ffi(TJsValue::to_js(self))
}

///|
/// [Request.isHistoryNavigation](https://developer.mozilla.org/en-US/docs/Web/API/Request/isHistoryNavigation)
impl TRequest with is_history_navigation(self : Self) -> Bool {
  request_is_history_navigation_ffi(TJsValue::to_js(self))
}

///|
/// [Request.signal](https://developer.mozilla.org/en-US/docs/Web/API/Request/signal)
impl TRequest with signal(self : Self) -> AbortSignal {
  request_signal_ffi(TJsValue::to_js(self))
}

///|
/// [Request.duplex](https://developer.mozilla.org/en-US/docs/Web/API/Request/duplex)
impl TRequest with duplex(self : Self) -> RequestDuplex {
  request_duplex_ffi(TJsValue::to_js(self))
}

///|
/// [Request.clone](https://developer.mozilla.org/en-US/docs/Web/API/Request/clone)
impl TRequest with clone(self : Self) -> Request {
  request_clone_ffi(TJsValue::to_js(self))
}

///|
/// [Request.body](https://developer.mozilla.org/en-US/docs/Web/API/Request/body)
impl TRequest with body(self : Self) -> ReadableStream {
  request_body_ffi(TJsValue::to_js(self))
}

///|
/// [Request.bodyUsed](https://developer.mozilla.org/en-US/docs/Web/API/Request/bodyUsed)
impl TRequest with body_used(self : Self) -> Bool {
  request_body_used_ffi(TJsValue::to_js(self))
}

///|
/// [Request.arrayBuffer](https://developer.mozilla.org/en-US/docs/Web/API/Request/arrayBuffer)
impl TRequest with array_buffer(self : Self) -> @js_async.Promise[ArrayBuffer] {
  request_array_buffer_ffi(TJsValue::to_js(self))
}

///|
/// [Request.blob](https://developer.mozilla.org/en-US/docs/Web/API/Request/blob)
impl TRequest with blob(self : Self) -> @js_async.Promise[Blob] {
  request_blob_ffi(TJsValue::to_js(self))
}

///|
/// [Request.bytes](https://developer.mozilla.org/en-US/docs/Web/API/Request/bytes)
impl TRequest with bytes(self : Self) -> @js_async.Promise[Uint8Array] {
  request_bytes_ffi(TJsValue::to_js(self))
}

///|
/// [Request.formData](https://developer.mozilla.org/en-US/docs/Web/API/Request/formData)
impl TRequest with form_data(self : Self) -> @js_async.Promise[FormData] {
  request_form_data_ffi(TJsValue::to_js(self))
}

///|
/// [Request.json](https://developer.mozilla.org/en-US/docs/Web/API/Request/json)
impl TRequest with json(self : Self) -> @js_async.Promise[JsValue] {
  request_json_ffi(TJsValue::to_js(self))
}

///|
/// [Request.text](https://developer.mozilla.org/en-US/docs/Web/API/Request/text)
impl TRequest with text(self : Self) -> @js_async.Promise[String] {
  request_text_ffi(TJsValue::to_js(self))
}
