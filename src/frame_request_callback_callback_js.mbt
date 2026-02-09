///|
pub fn FrameRequestCallback::new(
  f : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback {
  frame_request_callback_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn frame_request_callback_ffi(f : JsValue) -> JsValue = "(f) => f"
