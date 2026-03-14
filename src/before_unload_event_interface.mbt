// Do not edit. This file is generated.
// MoonBit type: BeforeUnloadEvent
// Specifications: html.idl

/// [BeforeUnloadEvent](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent)
#external
pub type BeforeUnloadEvent

pub impl TJsValue for BeforeUnloadEvent with to_js(self: BeforeUnloadEvent) -> JsValue = "%identity"

pub impl FromJsAny for BeforeUnloadEvent with from_js_any(value : JsAny) -> BeforeUnloadEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TBeforeUnloadEvent] BeforeUnloadEvent::into(self : BeforeUnloadEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TBeforeUnloadEvent] BeforeUnloadEvent::unsafe_into(self : BeforeUnloadEvent) -> T = "%identity"

pub impl HasConstructor for BeforeUnloadEvent with constructor_name() { "BeforeUnloadEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TBeforeUnloadEvent + HasConstructor] BeforeUnloadEvent::try_into(self : BeforeUnloadEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TBeforeUnloadEvent for BeforeUnloadEvent

pub impl TEvent for BeforeUnloadEvent

/// [BeforeUnloadEvent](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent) interface.
pub trait TBeforeUnloadEvent: TEvent {
  return_value(self : Self) -> String = _
  set_return_value(self : Self, return_value : String) -> Unit = _
}

/// [BeforeUnloadEvent.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent/returnValue)
impl TBeforeUnloadEvent with return_value(self : Self) -> String {
  before_unload_event_return_value_ffi(TJsValue::to_js(self))
}

/// [BeforeUnloadEvent.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent/returnValue)
impl TBeforeUnloadEvent with set_return_value(self : Self, 
return_value : String) -> Unit {
  before_unload_event_set_return_value_ffi(TJsValue::to_js(self), TJsValue::to_js(return_value))
}

#cfg(target="js")
extern "js" fn before_unload_event_return_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.returnValue"

///|
#cfg(target="js")
fn before_unload_event_return_value_ffi(obj: JsValue) -> String {
  before_unload_event_return_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn before_unload_event_set_return_value_ffi(obj: JsValue, return_value: JsValue) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"

#cfg(target="wasm-gc")
fn before_unload_event_return_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_BeforeUnloadEvent" "get_returnValue"

///|
#cfg(target="wasm-gc")
fn before_unload_event_return_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(before_unload_event_return_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn before_unload_event_set_return_value_ffi(obj: JsValue, return_value: JsValue) -> Unit = "webapi_BeforeUnloadEvent" "set_returnValue"