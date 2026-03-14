// Do not edit. This file is generated.
// MoonBit type: Request
// Specifications: fetch.idl

/// [Request](https://developer.mozilla.org/en-US/docs/Web/API/Request)
#external
pub type Request

pub impl TJsValue for Request with to_js(self: Request) -> JsValue = "%identity"

pub impl FromJsAny for Request with from_js_any(value : JsAny) -> Request = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TRequest] Request::into(self : Request) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TRequest] Request::unsafe_into(self : Request) -> T = "%identity"

pub impl HasConstructor for Request with constructor_name() { "Request" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TRequest + HasConstructor] Request::try_into(self : Request) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TRequest for Request

pub fn Request::new(input : &TRequestInfo, 
init? : RequestInit) -> Request {
  request_new_ffi(input.to_js(), opt_to_js(init))
}

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
  array_buffer(self : Self) -> JsPromise[ArrayBuffer] = _
  blob(self : Self) -> JsPromise[Blob] = _
  bytes(self : Self) -> JsPromise[Uint8Array] = _
  form_data(self : Self) -> JsPromise[FormData] = _
  json(self : Self) -> JsPromise[JsValue] = _
  text(self : Self) -> JsPromise[String] = _
}

/// [Request.method](https://developer.mozilla.org/en-US/docs/Web/API/Request/method)
impl TRequest with method_(self : Self) -> String {
  request_method_ffi(TJsValue::to_js(self))
}

/// [Request.url](https://developer.mozilla.org/en-US/docs/Web/API/Request/url)
impl TRequest with url(self : Self) -> String {
  request_url_ffi(TJsValue::to_js(self))
}

/// [Request.headers](https://developer.mozilla.org/en-US/docs/Web/API/Request/headers)
impl TRequest with headers(self : Self) -> Headers {
  request_headers_ffi(TJsValue::to_js(self))
}

/// [Request.destination](https://developer.mozilla.org/en-US/docs/Web/API/Request/destination)
impl TRequest with destination(self : Self) -> RequestDestination {
  request_destination_ffi(TJsValue::to_js(self))
}

/// [Request.referrer](https://developer.mozilla.org/en-US/docs/Web/API/Request/referrer)
impl TRequest with referrer(self : Self) -> String {
  request_referrer_ffi(TJsValue::to_js(self))
}

/// [Request.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/Request/referrerPolicy)
impl TRequest with referrer_policy(self : Self) -> ReferrerPolicy {
  request_referrer_policy_ffi(TJsValue::to_js(self))
}

/// [Request.mode](https://developer.mozilla.org/en-US/docs/Web/API/Request/mode)
impl TRequest with mode(self : Self) -> RequestMode {
  request_mode_ffi(TJsValue::to_js(self))
}

/// [Request.credentials](https://developer.mozilla.org/en-US/docs/Web/API/Request/credentials)
impl TRequest with credentials(self : Self) -> RequestCredentials {
  request_credentials_ffi(TJsValue::to_js(self))
}

/// [Request.cache](https://developer.mozilla.org/en-US/docs/Web/API/Request/cache)
impl TRequest with cache(self : Self) -> RequestCache {
  request_cache_ffi(TJsValue::to_js(self))
}

/// [Request.redirect](https://developer.mozilla.org/en-US/docs/Web/API/Request/redirect)
impl TRequest with redirect(self : Self) -> RequestRedirect {
  request_redirect_ffi(TJsValue::to_js(self))
}

/// [Request.integrity](https://developer.mozilla.org/en-US/docs/Web/API/Request/integrity)
impl TRequest with integrity(self : Self) -> String {
  request_integrity_ffi(TJsValue::to_js(self))
}

/// [Request.keepalive](https://developer.mozilla.org/en-US/docs/Web/API/Request/keepalive)
impl TRequest with keepalive(self : Self) -> Bool {
  request_keepalive_ffi(TJsValue::to_js(self))
}

/// [Request.isReloadNavigation](https://developer.mozilla.org/en-US/docs/Web/API/Request/isReloadNavigation)
impl TRequest with is_reload_navigation(self : Self) -> Bool {
  request_is_reload_navigation_ffi(TJsValue::to_js(self))
}

/// [Request.isHistoryNavigation](https://developer.mozilla.org/en-US/docs/Web/API/Request/isHistoryNavigation)
impl TRequest with is_history_navigation(self : Self) -> Bool {
  request_is_history_navigation_ffi(TJsValue::to_js(self))
}

/// [Request.signal](https://developer.mozilla.org/en-US/docs/Web/API/Request/signal)
impl TRequest with signal(self : Self) -> AbortSignal {
  request_signal_ffi(TJsValue::to_js(self))
}

/// [Request.duplex](https://developer.mozilla.org/en-US/docs/Web/API/Request/duplex)
impl TRequest with duplex(self : Self) -> RequestDuplex {
  request_duplex_ffi(TJsValue::to_js(self))
}

/// [Request.clone](https://developer.mozilla.org/en-US/docs/Web/API/Request/clone)
impl TRequest with clone(self : Self) -> Request {
  request_clone_ffi(TJsValue::to_js(self))
}

/// [Request.body](https://developer.mozilla.org/en-US/docs/Web/API/Request/body)
impl TRequest with body(self : Self) -> ReadableStream {
  request_body_ffi(TJsValue::to_js(self))
}

/// [Request.bodyUsed](https://developer.mozilla.org/en-US/docs/Web/API/Request/bodyUsed)
impl TRequest with body_used(self : Self) -> Bool {
  request_body_used_ffi(TJsValue::to_js(self))
}

/// [Request.arrayBuffer](https://developer.mozilla.org/en-US/docs/Web/API/Request/arrayBuffer)
impl TRequest with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  request_array_buffer_ffi(TJsValue::to_js(self))
}

/// [Request.blob](https://developer.mozilla.org/en-US/docs/Web/API/Request/blob)
impl TRequest with blob(self : Self) -> JsPromise[Blob] {
  request_blob_ffi(TJsValue::to_js(self))
}

/// [Request.bytes](https://developer.mozilla.org/en-US/docs/Web/API/Request/bytes)
impl TRequest with bytes(self : Self) -> JsPromise[Uint8Array] {
  request_bytes_ffi(TJsValue::to_js(self))
}

/// [Request.formData](https://developer.mozilla.org/en-US/docs/Web/API/Request/formData)
impl TRequest with form_data(self : Self) -> JsPromise[FormData] {
  request_form_data_ffi(TJsValue::to_js(self))
}

/// [Request.json](https://developer.mozilla.org/en-US/docs/Web/API/Request/json)
impl TRequest with json(self : Self) -> JsPromise[JsValue] {
  request_json_ffi(TJsValue::to_js(self))
}

/// [Request.text](https://developer.mozilla.org/en-US/docs/Web/API/Request/text)
impl TRequest with text(self : Self) -> JsPromise[String] {
  request_text_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn request_new_ffi(input: JsValue, init: JsValue) -> Request = "(input, init) => new Request(input, init)"

#cfg(target="js")
extern "js" fn request_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.method"

///|
#cfg(target="js")
fn request_method_ffi(obj: JsValue) -> String {
  request_method_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn request_url_ffi(obj: JsValue) -> String {
  request_url_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_headers_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.headers"

///|
#cfg(target="js")
fn request_headers_ffi(obj: JsValue) -> Headers {
  request_headers_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_destination_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.destination"

///|
#cfg(target="js")
fn request_destination_ffi(obj: JsValue) -> RequestDestination {
  RequestDestination::from_unchecked(request_destination_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn request_referrer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrer"

///|
#cfg(target="js")
fn request_referrer_ffi(obj: JsValue) -> String {
  request_referrer_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_referrer_policy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
fn request_referrer_policy_ffi(obj: JsValue) -> ReferrerPolicy {
  ReferrerPolicy::from_unchecked(request_referrer_policy_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn request_mode_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="js")
fn request_mode_ffi(obj: JsValue) -> RequestMode {
  RequestMode::from_unchecked(request_mode_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn request_credentials_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.credentials"

///|
#cfg(target="js")
fn request_credentials_ffi(obj: JsValue) -> RequestCredentials {
  RequestCredentials::from_unchecked(request_credentials_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn request_cache_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cache"

///|
#cfg(target="js")
fn request_cache_ffi(obj: JsValue) -> RequestCache {
  RequestCache::from_unchecked(request_cache_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn request_redirect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.redirect"

///|
#cfg(target="js")
fn request_redirect_ffi(obj: JsValue) -> RequestRedirect {
  RequestRedirect::from_unchecked(request_redirect_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn request_integrity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.integrity"

///|
#cfg(target="js")
fn request_integrity_ffi(obj: JsValue) -> String {
  request_integrity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_keepalive_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.keepalive"

///|
#cfg(target="js")
fn request_keepalive_ffi(obj: JsValue) -> Bool {
  request_keepalive_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_is_reload_navigation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isReloadNavigation"

///|
#cfg(target="js")
fn request_is_reload_navigation_ffi(obj: JsValue) -> Bool {
  request_is_reload_navigation_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_is_history_navigation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isHistoryNavigation"

///|
#cfg(target="js")
fn request_is_history_navigation_ffi(obj: JsValue) -> Bool {
  request_is_history_navigation_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_signal_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="js")
fn request_signal_ffi(obj: JsValue) -> AbortSignal {
  request_signal_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_duplex_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.duplex"

///|
#cfg(target="js")
fn request_duplex_ffi(obj: JsValue) -> RequestDuplex {
  RequestDuplex::from_unchecked(request_duplex_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn request_clone_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.clone()"

///|
#cfg(target="js")
fn request_clone_ffi(obj: JsValue) -> Request {
  request_clone_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_body_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.body"

///|
#cfg(target="js")
fn request_body_ffi(obj: JsValue) -> ReadableStream {
  request_body_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_body_used_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bodyUsed"

///|
#cfg(target="js")
fn request_body_used_ffi(obj: JsValue) -> Bool {
  request_body_used_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_array_buffer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

///|
#cfg(target="js")
fn request_array_buffer_ffi(obj: JsValue) -> JsPromise[ArrayBuffer] {
  request_array_buffer_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_blob_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.blob()"

///|
#cfg(target="js")
fn request_blob_ffi(obj: JsValue) -> JsPromise[Blob] {
  request_blob_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_bytes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"

///|
#cfg(target="js")
fn request_bytes_ffi(obj: JsValue) -> JsPromise[Uint8Array] {
  request_bytes_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_form_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formData()"

///|
#cfg(target="js")
fn request_form_data_ffi(obj: JsValue) -> JsPromise[FormData] {
  request_form_data_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.json()"

///|
#cfg(target="js")
fn request_json_ffi(obj: JsValue) -> JsPromise[JsValue] {
  request_json_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn request_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.text()"

///|
#cfg(target="js")
fn request_text_ffi(obj: JsValue) -> JsPromise[String] {
  request_text_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn request_new_ffi(input: JsValue, init: JsValue) -> Request = "webapi_Request" "new"

#cfg(target="wasm-gc")
fn request_method_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_method"

///|
#cfg(target="wasm-gc")
fn request_method_ffi(obj: JsValue) -> String {
  jsvalue_to_string(request_method_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn request_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_url"

///|
#cfg(target="wasm-gc")
fn request_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(request_url_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn request_headers_ffi(obj: JsValue) -> Headers = "webapi_Request" "get_headers"

#cfg(target="wasm-gc")
fn request_destination_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_destination"

///|
#cfg(target="wasm-gc")
fn request_destination_ffi(obj: JsValue) -> RequestDestination {
  RequestDestination::from_unchecked(jsvalue_to_string(request_destination_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn request_referrer_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_referrer"

///|
#cfg(target="wasm-gc")
fn request_referrer_ffi(obj: JsValue) -> String {
  jsvalue_to_string(request_referrer_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn request_referrer_policy_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn request_referrer_policy_ffi(obj: JsValue) -> ReferrerPolicy {
  ReferrerPolicy::from_unchecked(jsvalue_to_string(request_referrer_policy_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn request_mode_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_mode"

///|
#cfg(target="wasm-gc")
fn request_mode_ffi(obj: JsValue) -> RequestMode {
  RequestMode::from_unchecked(jsvalue_to_string(request_mode_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn request_credentials_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_credentials"

///|
#cfg(target="wasm-gc")
fn request_credentials_ffi(obj: JsValue) -> RequestCredentials {
  RequestCredentials::from_unchecked(jsvalue_to_string(request_credentials_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn request_cache_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_cache"

///|
#cfg(target="wasm-gc")
fn request_cache_ffi(obj: JsValue) -> RequestCache {
  RequestCache::from_unchecked(jsvalue_to_string(request_cache_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn request_redirect_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_redirect"

///|
#cfg(target="wasm-gc")
fn request_redirect_ffi(obj: JsValue) -> RequestRedirect {
  RequestRedirect::from_unchecked(jsvalue_to_string(request_redirect_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn request_integrity_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_integrity"

///|
#cfg(target="wasm-gc")
fn request_integrity_ffi(obj: JsValue) -> String {
  jsvalue_to_string(request_integrity_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn request_keepalive_ffi(obj: JsValue) -> Bool = "webapi_Request" "get_keepalive"

#cfg(target="wasm-gc")
fn request_is_reload_navigation_ffi(obj: JsValue) -> Bool = "webapi_Request" "get_isReloadNavigation"

#cfg(target="wasm-gc")
fn request_is_history_navigation_ffi(obj: JsValue) -> Bool = "webapi_Request" "get_isHistoryNavigation"

#cfg(target="wasm-gc")
fn request_signal_ffi(obj: JsValue) -> AbortSignal = "webapi_Request" "get_signal"

#cfg(target="wasm-gc")
fn request_duplex_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "get_duplex"

///|
#cfg(target="wasm-gc")
fn request_duplex_ffi(obj: JsValue) -> RequestDuplex {
  RequestDuplex::from_unchecked(jsvalue_to_string(request_duplex_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn request_clone_ffi(obj: JsValue) -> Request = "webapi_Request" "clone"

#cfg(target="wasm-gc")
fn request_body_ffi(obj: JsValue) -> ReadableStream = "webapi_Request" "get_body"

#cfg(target="wasm-gc")
fn request_body_used_ffi(obj: JsValue) -> Bool = "webapi_Request" "get_bodyUsed"

#cfg(target="wasm-gc")
fn request_array_buffer_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "arrayBuffer"

///|
#cfg(target="wasm-gc")
fn request_array_buffer_ffi(obj: JsValue) -> JsPromise[ArrayBuffer] {
  request_array_buffer_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn request_blob_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "blob"

///|
#cfg(target="wasm-gc")
fn request_blob_ffi(obj: JsValue) -> JsPromise[Blob] {
  request_blob_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn request_bytes_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "bytes"

///|
#cfg(target="wasm-gc")
fn request_bytes_ffi(obj: JsValue) -> JsPromise[Uint8Array] {
  request_bytes_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn request_form_data_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "formData"

///|
#cfg(target="wasm-gc")
fn request_form_data_ffi(obj: JsValue) -> JsPromise[FormData] {
  request_form_data_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn request_json_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "json"

///|
#cfg(target="wasm-gc")
fn request_json_ffi(obj: JsValue) -> JsPromise[JsValue] {
  request_json_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn request_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Request" "text"

///|
#cfg(target="wasm-gc")
fn request_text_ffi(obj: JsValue) -> JsPromise[String] {
  request_text_ffi_wasm(obj).unsafe_cast()
}