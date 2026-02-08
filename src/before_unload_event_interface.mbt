// Do not edit. This file is generated.
// MoonBit type: BeforeUnloadEvent
// Specifications: html.idl

/// [BeforeUnloadEvent](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent)
#external
pub type BeforeUnloadEvent

pub impl TJsValue for BeforeUnloadEvent with to_js(self: BeforeUnloadEvent) -> JsValue = "%identity"

pub fn[T: TBeforeUnloadEvent] BeforeUnloadEvent::into(self : BeforeUnloadEvent) -> T = "%identity"

pub impl TBeforeUnloadEvent for BeforeUnloadEvent

pub impl TEvent for BeforeUnloadEvent

/// [BeforeUnloadEvent](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent) interface.
pub trait TBeforeUnloadEvent: TEvent {
  return_value(self : Self) -> String = _
  set_return_value(self : Self, return_value : String) -> Unit = _
}

/// [BeforeUnloadEvent.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent/returnValue)
impl TBeforeUnloadEvent with return_value(self : Self) -> String {
  before_unload_event_return_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [BeforeUnloadEvent.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent/returnValue)
impl TBeforeUnloadEvent with set_return_value(self : Self, 
return_value : String) -> Unit {
  before_unload_event_set_return_value_ffi(TJsValue::to_js(self), TJsValue::to_js(return_value))
}