///|
fn idle_deadline_time_remaining_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IdleDeadline" "timeRemaining"

///|
fn idle_deadline_time_remaining_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  idle_deadline_time_remaining_ffi_wasm(obj).unsafe_cast()
}

///|
fn idle_deadline_did_timeout_ffi(obj : JsValue) -> Bool = "webapi_IdleDeadline" "get_didTimeout"
