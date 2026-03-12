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

///|
fn promise_rejection_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_bubbles"

///|
fn promise_rejection_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_cancelable"

///|
fn promise_rejection_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_composed"

///|
fn promise_rejection_event_init_get_promise_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_promise"

///|
fn promise_rejection_event_init_get_reason_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_reason"
