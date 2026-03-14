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
pub impl FromJsAny for FrameRequestCallback with from_js_any(value : JsAny) -> FrameRequestCallback = "%identity"

///|
pub fn FrameRequestCallback::new(
  callback : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback {
  frame_request_callback_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn frame_request_callback_ffi(
  callback : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback = "(callback) => callback"

///|
#cfg(target="wasm-gc")
fn frame_request_callback_ffi(
  callback : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback = "webapi_FrameRequestCallback" "new"
