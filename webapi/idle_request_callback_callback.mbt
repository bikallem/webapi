// Do not edit. This file is generated.
// MoonBit type: IdleRequestCallback
// Specifications: requestidlecallback.idl

///|
/// [IdleRequestCallback](https://developer.mozilla.org/en-US/docs/Web/API/IdleRequestCallback)
#external
pub type IdleRequestCallback

///|
pub impl TJsValue for IdleRequestCallback with to_js(self : IdleRequestCallback) -> JsValue = "%identity"

///|
pub impl FromJsAny for IdleRequestCallback with from_js_any(value : JsAny) -> IdleRequestCallback = "%identity"

///|
pub fn IdleRequestCallback::new(
  callback : (IdleDeadline) -> Unit,
) -> IdleRequestCallback {
  idle_request_callback_ffi(callback)
}
