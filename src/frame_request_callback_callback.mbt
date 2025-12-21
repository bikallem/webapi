///|
#external
pub type FrameRequestCallback

///|
pub impl TJsValue for FrameRequestCallback with to_js(
  self : FrameRequestCallback,
) -> JsValue = "%identity"

///|
extern "js" fn frame_request_callback_ffi(
  f : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback = "(f) => f"

///|
pub fn FrameRequestCallback::new(
  f : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback {
  frame_request_callback_ffi(f)
}
