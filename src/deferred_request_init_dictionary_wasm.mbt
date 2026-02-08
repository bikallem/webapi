///|
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
fn deferred_request_init_empty_ffi() -> DeferredRequestInit = "webapi_Dictionary" "empty"
