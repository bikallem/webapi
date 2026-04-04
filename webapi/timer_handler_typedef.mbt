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
pub impl FromJsAny for TimerHandler with from_js_any(value : JsAny) -> TimerHandler = "%identity"

///|
pub(open) trait TTimerHandler: TJsValue {}

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTimerHandler + FromJsAny] TimerHandler::into(
  self : TimerHandler,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TTimerHandler + FromJsAny] TimerHandler::unsafe_into(
  self : TimerHandler,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TTimerHandler] TimerHandler::from(value : T) -> TimerHandler = "%identity"

///|
pub impl TTimerHandler for TimerHandler

///|
pub impl TTimerHandler for String

///|
pub impl TTimerHandler for Function

///|
pub impl TTimerHandler for TrustedScript
