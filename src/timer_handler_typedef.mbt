// Do not edit. This file is generated.
// MoonBit type: TimerHandler
// Specifications: html.idl

///|
/// [TimerHandler](https://developer.mozilla.org/en-US/docs/Web/API/TimerHandler)
#external
pub type TimerHandler

///|
pub impl TJsValue for TimerHandler with to_js(self : TimerHandler) -> JsValue = "%identity"

///|
pub(open) trait TTimerHandler {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TTimerHandler] TimerHandler::into(self : TimerHandler) -> T = "%identity"

///|
pub impl TTimerHandler for TimerHandler with to_js(self : TimerHandler) -> JsValue = "%identity"

///|
pub impl TTimerHandler for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TTimerHandler for Function with to_js(self : Function) -> JsValue = "%identity"

///|
pub impl TTimerHandler for TrustedScript with to_js(self : TrustedScript) -> JsValue = "%identity"
