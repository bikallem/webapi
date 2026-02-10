pub fn IdleRequestCallback::new(f : (IdleDeadline) -> Unit) -> IdleRequestCallback {
  let w : (JsValue) -> Unit = fn(a0 : JsValue) { f(a0.unsafe_cast()) }
  idle_request_callback_ffi(w).unsafe_cast()
}

///|
fn idle_request_callback_ffi(f : (JsValue) -> Unit) -> JsValue = "webapi_IdleRequestCallback" "new"