///|
fn request_init_ffi(
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
) -> RequestInit = "webapi_RequestInit" "new"

///|
fn request_init_empty_ffi() -> RequestInit = "webapi_Dictionary" "empty"

///|
fn request_init_get_method_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_method"

///|
fn request_init_get_headers_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_headers"

///|
fn request_init_get_body_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_body"

///|
fn request_init_get_referrer_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_referrer"

///|
fn request_init_get_referrer_policy_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_referrerPolicy"

///|
fn request_init_get_mode_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_mode"

///|
fn request_init_get_credentials_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_credentials"

///|
fn request_init_get_cache_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_cache"

///|
fn request_init_get_redirect_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_redirect"

///|
fn request_init_get_integrity_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_integrity"

///|
fn request_init_get_keepalive_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_keepalive"

///|
fn request_init_get_signal_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_signal"

///|
fn request_init_get_duplex_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_duplex"

///|
fn request_init_get_priority_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_priority"

///|
fn request_init_get_window_ffi(obj : JsValue) -> JsValue = "webapi_RequestInit" "get_window"
