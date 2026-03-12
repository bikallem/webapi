// Do not edit. This file is generated.
// MoonBit type: DeferredRequestInit
// Specifications: fetch.idl

///|
/// [DeferredRequestInit](https://developer.mozilla.org/en-US/docs/Web/API/DeferredRequestInit)
#external
pub type DeferredRequestInit

///|
pub impl TJsValue for DeferredRequestInit with to_js(self : DeferredRequestInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for DeferredRequestInit with from_js_any(value : JsAny) -> DeferredRequestInit = "%identity"

///|
pub fn DeferredRequestInit::new(
  method_? : String,
  headers? : &THeadersInit,
  body? : &TBodyInit,
  referrer? : String,
  referrer_policy? : ReferrerPolicy,
  mode? : RequestMode,
  credentials? : RequestCredentials,
  cache? : RequestCache,
  redirect? : RequestRedirect,
  integrity? : String,
  keepalive? : Bool,
  signal? : &TAbortSignal,
  duplex? : RequestDuplex,
  priority? : RequestPriority,
  window? : JsValue,
  activate_after? : DOMHighResTimeStamp,
) -> DeferredRequestInit {
  deferred_request_init_ffi(
    opt_to_js(method_),
    match headers {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    match body {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(referrer),
    opt_to_js(referrer_policy),
    opt_to_js(mode),
    opt_to_js(credentials),
    opt_to_js(cache),
    opt_to_js(redirect),
    opt_to_js(integrity),
    opt_to_js(keepalive),
    opt_to_js(signal),
    opt_to_js(duplex),
    opt_to_js(priority),
    opt_to_js(window),
    opt_to_js(activate_after),
  )
}

///|
pub fn DeferredRequestInit::empty() -> DeferredRequestInit {
  deferred_request_init_empty_ffi()
}

///|
pub fn DeferredRequestInit::method_(self : DeferredRequestInit) -> String? {
  deferred_request_init_get_method_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DeferredRequestInit::headers(self : DeferredRequestInit) -> HeadersInit? {
  deferred_request_init_get_headers_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::body(self : DeferredRequestInit) -> BodyInit? {
  deferred_request_init_get_body_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::referrer(self : DeferredRequestInit) -> String? {
  deferred_request_init_get_referrer_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DeferredRequestInit::referrer_policy(
  self : DeferredRequestInit,
) -> ReferrerPolicy? {
  deferred_request_init_get_referrer_policy_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::mode(self : DeferredRequestInit) -> RequestMode? {
  deferred_request_init_get_mode_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::credentials(
  self : DeferredRequestInit,
) -> RequestCredentials? {
  deferred_request_init_get_credentials_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::cache(self : DeferredRequestInit) -> RequestCache? {
  deferred_request_init_get_cache_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::redirect(
  self : DeferredRequestInit,
) -> RequestRedirect? {
  deferred_request_init_get_redirect_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::integrity(self : DeferredRequestInit) -> String? {
  deferred_request_init_get_integrity_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DeferredRequestInit::keepalive(self : DeferredRequestInit) -> Bool? {
  deferred_request_init_get_keepalive_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DeferredRequestInit::signal(self : DeferredRequestInit) -> AbortSignal? {
  deferred_request_init_get_signal_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::duplex(
  self : DeferredRequestInit,
) -> RequestDuplex? {
  deferred_request_init_get_duplex_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::priority(
  self : DeferredRequestInit,
) -> RequestPriority? {
  deferred_request_init_get_priority_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::window(self : DeferredRequestInit) -> JsValue? {
  deferred_request_init_get_window_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DeferredRequestInit::activate_after(
  self : DeferredRequestInit,
) -> DOMHighResTimeStamp? {
  deferred_request_init_get_activate_after_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn deferred_request_init_ffi(
  method_ : JsValue,
  headers : JsValue,
  body : JsValue,
  referrer : JsValue,
  referrer_policy : JsValue,
  mode : JsValue,
  credentials : JsValue,
  cache : JsValue,
  redirect : JsValue,
  integrity : JsValue,
  keepalive : JsValue,
  signal : JsValue,
  duplex : JsValue,
  priority : JsValue,
  window : JsValue,
  activate_after : JsValue,
) -> DeferredRequestInit =
  #|(method, headers, body, referrer, referrerPolicy, mode, credentials, cache, redirect, integrity, keepalive, signal, duplex, priority, window, activateAfter) => {
  #|  const obj = {};
  #|  if (method !== undefined) obj.method = method;
  #|  if (headers !== undefined) obj.headers = headers;
  #|  if (body !== undefined) obj.body = body;
  #|  if (referrer !== undefined) obj.referrer = referrer;
  #|  if (referrerPolicy !== undefined) obj.referrerPolicy = referrerPolicy;
  #|  if (mode !== undefined) obj.mode = mode;
  #|  if (credentials !== undefined) obj.credentials = credentials;
  #|  if (cache !== undefined) obj.cache = cache;
  #|  if (redirect !== undefined) obj.redirect = redirect;
  #|  if (integrity !== undefined) obj.integrity = integrity;
  #|  if (keepalive !== undefined) obj.keepalive = keepalive;
  #|  if (signal !== undefined) obj.signal = signal;
  #|  if (duplex !== undefined) obj.duplex = duplex;
  #|  if (priority !== undefined) obj.priority = priority;
  #|  if (window !== undefined) obj.window = window;
  #|  if (activateAfter !== undefined) obj.activateAfter = activateAfter;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn deferred_request_init_empty_ffi() -> DeferredRequestInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_method_ffi(obj : JsValue) -> JsValue = "(obj) => obj.method"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_headers_ffi(obj : JsValue) -> JsValue = "(obj) => obj.headers"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_body_ffi(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_referrer_ffi(obj : JsValue) -> JsValue = "(obj) => obj.referrer"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_referrer_policy_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_credentials_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.credentials"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_cache_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cache"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_redirect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.redirect"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_integrity_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.integrity"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_keepalive_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.keepalive"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_signal_ffi(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_duplex_ffi(obj : JsValue) -> JsValue = "(obj) => obj.duplex"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_priority_ffi(obj : JsValue) -> JsValue = "(obj) => obj.priority"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_window_ffi(obj : JsValue) -> JsValue = "(obj) => obj.window"

///|
#cfg(target="js")
extern "js" fn deferred_request_init_get_activate_after_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.activateAfter"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_ffi(
  method_ : JsValue,
  headers : JsValue,
  body : JsValue,
  referrer : JsValue,
  referrer_policy : JsValue,
  mode : JsValue,
  credentials : JsValue,
  cache : JsValue,
  redirect : JsValue,
  integrity : JsValue,
  keepalive : JsValue,
  signal : JsValue,
  duplex : JsValue,
  priority : JsValue,
  window : JsValue,
  activate_after : JsValue,
) -> DeferredRequestInit = "webapi_DeferredRequestInit" "new"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_empty_ffi() -> DeferredRequestInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_method_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_method"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_headers_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_headers"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_body_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_body"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_referrer_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_referrer"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_referrer_policy_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_mode_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_mode"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_credentials_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_credentials"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_cache_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_cache"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_redirect_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_redirect"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_integrity_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_integrity"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_keepalive_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_keepalive"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_signal_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_signal"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_duplex_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_duplex"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_priority_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_priority"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_window_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_window"

///|
#cfg(target="wasm-gc")
fn deferred_request_init_get_activate_after_ffi(obj : JsValue) -> JsValue = "webapi_DeferredRequestInit" "get_activateAfter"
