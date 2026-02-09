// Do not edit. This file is generated.
// MoonBit type: PromiseRejectionEvent
// Specifications: html.idl

///|
/// [PromiseRejectionEvent](https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEvent)
#external
pub type PromiseRejectionEvent

///|
pub impl TJsValue for PromiseRejectionEvent with to_js(
  self : PromiseRejectionEvent,
) -> JsValue = "%identity"

///|
pub fn[T : TPromiseRejectionEvent] PromiseRejectionEvent::into(
  self : PromiseRejectionEvent,
) -> T = "%identity"

///|
pub impl TPromiseRejectionEvent for PromiseRejectionEvent

///|
pub impl TEvent for PromiseRejectionEvent

///|
pub fn PromiseRejectionEvent::new(
  type_ : String,
  event_init_dict : PromiseRejectionEventInit,
) -> PromiseRejectionEvent {
  promise_rejection_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [PromiseRejectionEvent](https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEvent) interface.
pub trait TPromiseRejectionEvent: TEvent {
  promise(self : Self) -> JsValue = _
  reason(self : Self) -> JsValue = _
}

///|
/// [PromiseRejectionEvent.promise](https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEvent/promise)
impl TPromiseRejectionEvent with promise(self : Self) -> JsValue {
  promise_rejection_event_promise_ffi(TJsValue::to_js(self))
}

///|
/// [PromiseRejectionEvent.reason](https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEvent/reason)
impl TPromiseRejectionEvent with reason(self : Self) -> JsValue {
  promise_rejection_event_reason_ffi(TJsValue::to_js(self))
}
