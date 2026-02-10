///|
pub fn IdleRequestCallback::new(
  f : (IdleDeadline) -> Unit,
) -> IdleRequestCallback {
  idle_request_callback_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn idle_request_callback_ffi(f : JsValue) -> JsValue = "(f) => f"
