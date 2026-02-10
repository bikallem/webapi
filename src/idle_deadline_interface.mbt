// Do not edit. This file is generated.
// MoonBit type: IdleDeadline
// Specifications: requestidlecallback.idl

///|
/// [IdleDeadline](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline)
#external
pub type IdleDeadline

///|
pub impl TJsValue for IdleDeadline with to_js(self : IdleDeadline) -> JsValue = "%identity"

///|
pub fn[T : TIdleDeadline] IdleDeadline::into(self : IdleDeadline) -> T = "%identity"

///|
pub impl TIdleDeadline for IdleDeadline

///|
/// [IdleDeadline](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline) interface.
pub trait TIdleDeadline: TJsValue {
  time_remaining(self : Self) -> DOMHighResTimeStamp = _
  did_timeout(self : Self) -> Bool = _
}

///|
/// [IdleDeadline.timeRemaining](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline/timeRemaining)
impl TIdleDeadline with time_remaining(self : Self) -> DOMHighResTimeStamp {
  idle_deadline_time_remaining_ffi(TJsValue::to_js(self))
}

///|
/// [IdleDeadline.didTimeout](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline/didTimeout)
impl TIdleDeadline with did_timeout(self : Self) -> Bool {
  idle_deadline_did_timeout_ffi(TJsValue::to_js(self))
}
