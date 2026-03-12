// Do not edit. This file is generated.
// MoonBit type: RequestInit
// Specifications: fetch.idl

/// [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/RequestInit)
#external
pub type RequestInit

pub impl TJsValue for RequestInit with to_js(self: RequestInit) -> JsValue = "%identity"

pub impl FromJsAny for RequestInit with from_js_any(value : JsAny) -> RequestInit = "%identity"

pub fn RequestInit::new(method_? : String, 
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
window? : JsValue) -> RequestInit {
  request_init_ffi(opt_to_js(method_), match headers {
Some(v) => v.to_js()
None => JsValue::undefined()
}, match body {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(referrer), opt_to_js(referrer_policy), opt_to_js(mode), opt_to_js(credentials), opt_to_js(cache), opt_to_js(redirect), opt_to_js(integrity), opt_to_js(keepalive), opt_to_js(signal), opt_to_js(duplex), opt_to_js(priority), opt_to_js(window))
}

pub fn RequestInit::empty() -> RequestInit { request_init_empty_ffi() }

pub fn RequestInit::method_(self : RequestInit) -> String? {
  request_init_get_method_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn RequestInit::headers(self : RequestInit) -> HeadersInit? {
  request_init_get_headers_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::body(self : RequestInit) -> BodyInit? {
  request_init_get_body_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::referrer(self : RequestInit) -> String? {
  request_init_get_referrer_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn RequestInit::referrer_policy(self : RequestInit) -> ReferrerPolicy? {
  request_init_get_referrer_policy_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::mode(self : RequestInit) -> RequestMode? {
  request_init_get_mode_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::credentials(self : RequestInit) -> RequestCredentials? {
  request_init_get_credentials_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::cache(self : RequestInit) -> RequestCache? {
  request_init_get_cache_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::redirect(self : RequestInit) -> RequestRedirect? {
  request_init_get_redirect_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::integrity(self : RequestInit) -> String? {
  request_init_get_integrity_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn RequestInit::keepalive(self : RequestInit) -> Bool? {
  request_init_get_keepalive_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn RequestInit::signal(self : RequestInit) -> AbortSignal? {
  request_init_get_signal_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::duplex(self : RequestInit) -> RequestDuplex? {
  request_init_get_duplex_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::priority(self : RequestInit) -> RequestPriority? {
  request_init_get_priority_ffi(TJsValue::to_js(self)).to_option()
}

pub fn RequestInit::window(self : RequestInit) -> JsValue? {
  request_init_get_window_ffi(TJsValue::to_js(self)).to_option()
}