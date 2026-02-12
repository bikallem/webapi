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
