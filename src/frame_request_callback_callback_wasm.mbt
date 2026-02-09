///|
pub fn FrameRequestCallback::new(
  f : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback {
  let w : (JsValue) -> Unit = fn(a0 : JsValue) { f(a0.unsafe_cast()) }
  frame_request_callback_ffi(w).unsafe_cast()
}

///|
fn frame_request_callback_ffi(f : (JsValue) -> Unit) -> JsValue = "webapi_FrameRequestCallback" "new"
