///|
extern "js" fn idle_deadline_time_remaining_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timeRemaining()"

///|
fn idle_deadline_time_remaining_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  idle_deadline_time_remaining_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idle_deadline_did_timeout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.didTimeout"

///|
fn idle_deadline_did_timeout_ffi(obj : JsValue) -> Bool {
  idle_deadline_did_timeout_ffi_js(obj).unsafe_cast()
}
