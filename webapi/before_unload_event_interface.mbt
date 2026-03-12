// Do not edit. This file is generated.
// MoonBit type: BeforeUnloadEvent
// Specifications: html.idl

///|
/// [BeforeUnloadEvent](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent)
#external
pub type BeforeUnloadEvent

///|
pub impl TJsValue for BeforeUnloadEvent with to_js(self : BeforeUnloadEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for BeforeUnloadEvent with from_js_any(value : JsAny) -> BeforeUnloadEvent = "%identity"

///|
pub fn[T : TBeforeUnloadEvent] BeforeUnloadEvent::into(
  self : BeforeUnloadEvent,
) -> T = "%identity"

///|
pub impl TBeforeUnloadEvent for BeforeUnloadEvent

///|
pub impl TEvent for BeforeUnloadEvent

///|
/// [BeforeUnloadEvent](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent) interface.
pub trait TBeforeUnloadEvent: TEvent {
  return_value(self : Self) -> String = _
  set_return_value(self : Self, return_value : String) -> Unit = _
}

///|
/// [BeforeUnloadEvent.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent/returnValue)
impl TBeforeUnloadEvent with return_value(self : Self) -> String {
  before_unload_event_return_value_ffi(TJsValue::to_js(self))
}

///|
/// [BeforeUnloadEvent.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent/returnValue)
impl TBeforeUnloadEvent with set_return_value(
  self : Self,
  return_value : String,
) -> Unit {
  before_unload_event_set_return_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(return_value),
  )
}

///|
#cfg(target="js")
extern "js" fn before_unload_event_return_value_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.returnValue"

///|
#cfg(target="js")
fn before_unload_event_return_value_ffi(obj : JsValue) -> String {
  before_unload_event_return_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn before_unload_event_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"

///|
#cfg(target="wasm-gc")
fn before_unload_event_return_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_BeforeUnloadEvent" "get_returnValue"

///|
#cfg(target="wasm-gc")
fn before_unload_event_return_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(before_unload_event_return_value_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn before_unload_event_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "webapi_BeforeUnloadEvent" "set_returnValue"
