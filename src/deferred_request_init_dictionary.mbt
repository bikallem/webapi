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
  let result = deferred_request_init_get_method_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DeferredRequestInit::headers(self : DeferredRequestInit) -> HeadersInit? {
  let result = deferred_request_init_get_headers_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::body(self : DeferredRequestInit) -> BodyInit? {
  let result = deferred_request_init_get_body_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::referrer(self : DeferredRequestInit) -> String? {
  let result = deferred_request_init_get_referrer_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DeferredRequestInit::referrer_policy(
  self : DeferredRequestInit,
) -> ReferrerPolicy? {
  let result = deferred_request_init_get_referrer_policy_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::mode(self : DeferredRequestInit) -> RequestMode? {
  let result = deferred_request_init_get_mode_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::credentials(
  self : DeferredRequestInit,
) -> RequestCredentials? {
  let result = deferred_request_init_get_credentials_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::cache(self : DeferredRequestInit) -> RequestCache? {
  let result = deferred_request_init_get_cache_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::redirect(
  self : DeferredRequestInit,
) -> RequestRedirect? {
  let result = deferred_request_init_get_redirect_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::integrity(self : DeferredRequestInit) -> String? {
  let result = deferred_request_init_get_integrity_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DeferredRequestInit::keepalive(self : DeferredRequestInit) -> Bool? {
  let result = deferred_request_init_get_keepalive_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DeferredRequestInit::signal(self : DeferredRequestInit) -> AbortSignal? {
  let result = deferred_request_init_get_signal_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::duplex(
  self : DeferredRequestInit,
) -> RequestDuplex? {
  let result = deferred_request_init_get_duplex_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::priority(
  self : DeferredRequestInit,
) -> RequestPriority? {
  let result = deferred_request_init_get_priority_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::window(self : DeferredRequestInit) -> JsValue? {
  let result = deferred_request_init_get_window_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn DeferredRequestInit::activate_after(
  self : DeferredRequestInit,
) -> DOMHighResTimeStamp? {
  let result = deferred_request_init_get_activate_after_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
