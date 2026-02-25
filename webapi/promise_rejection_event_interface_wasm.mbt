///|
fn promise_rejection_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PromiseRejectionEvent = "webapi_PromiseRejectionEvent" "new"

///|
fn promise_rejection_event_promise_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEvent" "get_promise"

///|
fn promise_rejection_event_reason_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEvent" "get_reason"
