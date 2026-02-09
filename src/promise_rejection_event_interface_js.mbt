///|
extern "js" fn promise_rejection_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PromiseRejectionEvent = "(type_, event_init_dict) => new PromiseRejectionEvent(type_, event_init_dict)"

///|
extern "js" fn promise_rejection_event_promise_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.promise"

///|
fn promise_rejection_event_promise_ffi(obj : JsValue) -> JsValue {
  promise_rejection_event_promise_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn promise_rejection_event_reason_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
fn promise_rejection_event_reason_ffi(obj : JsValue) -> JsValue {
  promise_rejection_event_reason_ffi_js(obj).unsafe_cast()
}
