// Auto-generated MoonBit bindings for FrameRequestCallback callback

// Do not edit manually

//
// WebIDL Callback:
// callback FrameRequestCallback = undefined (DOMHighResTimeStamp time);

///|
#external
pub type FrameRequestCallback

///|
pub impl TJsValue for FrameRequestCallback with to_js(
  self : FrameRequestCallback,
) -> JsValue = "%identity"

///|
pub fn FrameRequestCallback::new(f : (Double) -> Unit) -> FrameRequestCallback = "webapi_FrameRequestCallback" "new"
