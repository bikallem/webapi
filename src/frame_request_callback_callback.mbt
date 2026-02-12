// Do not edit. This file is generated.
// MoonBit type: FrameRequestCallback
// Specifications: html.idl

///|
/// [FrameRequestCallback](https://developer.mozilla.org/en-US/docs/Web/API/FrameRequestCallback)
#external
pub type FrameRequestCallback

///|
pub impl TJsValue for FrameRequestCallback with to_js(
  self : FrameRequestCallback,
) -> JsValue = "%identity"

///|
pub fn FrameRequestCallback::new(
  callback : (Double) -> Unit,
) -> FrameRequestCallback {
  frame_request_callback_ffi(callback)
}
