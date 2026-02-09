///|
fn promise_rejection_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  promise : JsValue,
  reason : JsValue,
) -> PromiseRejectionEventInit = "webapi_PromiseRejectionEventInit" "new"

///|
fn promise_rejection_event_init_empty_ffi() -> PromiseRejectionEventInit = "webapi_Dictionary" "empty"
