// Do not edit. This file is generated.
// MoonBit type: RequestInit
// Specifications: fetch.idl

///|
/// [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/RequestInit)
#external
pub type RequestInit

///|
pub impl TJsValue for RequestInit with to_js(self : RequestInit) -> JsValue = "%identity"

///|
pub fn RequestInit::new(
  method_? : String,
  headers? : HeadersInit,
  body? : BodyInit,
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
) -> RequestInit {
  request_init_ffi(
    opt_to_js(method_),
    opt_to_js(headers),
    opt_to_js(body),
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
  )
}

///|
pub fn RequestInit::empty() -> RequestInit {
  request_init_empty_ffi()
}
