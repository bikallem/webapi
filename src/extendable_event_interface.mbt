// Do not edit. This file is generated.
// MoonBit type: ExtendableEvent
// Specifications: service-workers.idl

/// [ExtendableEvent](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEvent)
#external
pub type ExtendableEvent

pub impl TJsValue for ExtendableEvent with to_js(self: ExtendableEvent) -> JsValue = "%identity"

pub impl FromJsAny for ExtendableEvent with from_js_any(value : JsAny) -> ExtendableEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TExtendableEvent] ExtendableEvent::into(self : ExtendableEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TExtendableEvent] ExtendableEvent::unsafe_into(self : ExtendableEvent) -> T = "%identity"

pub impl HasConstructor for ExtendableEvent with constructor_name() { "ExtendableEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TExtendableEvent + HasConstructor] ExtendableEvent::try_into(self : ExtendableEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TExtendableEvent for ExtendableEvent

pub impl TEvent for ExtendableEvent

pub fn ExtendableEvent::new(type_ : String, 
event_init_dict? : ExtendableEventInit) -> ExtendableEvent {
  extendable_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [ExtendableEvent](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEvent) interface.
pub trait TExtendableEvent: TEvent {
  wait_until(self : Self, f : JsPromise[JsValue]) -> Unit = _
}

/// [ExtendableEvent.waitUntil](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEvent/waitUntil)
impl TExtendableEvent with wait_until(self : Self, 
f : JsPromise[JsValue]) -> Unit {
  extendable_event_wait_until_ffi(TJsValue::to_js(self), TJsValue::to_js(f))
}

#cfg(target="js")
extern "js" fn extendable_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ExtendableEvent = "(type_, event_init_dict) => new ExtendableEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn extendable_event_wait_until_ffi(obj: JsValue, f: JsValue) -> Unit = "(obj, f) => obj.waitUntil(f)"

#cfg(target="wasm-gc")
fn extendable_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ExtendableEvent = "webapi_ExtendableEvent" "new"

#cfg(target="wasm-gc")
fn extendable_event_wait_until_ffi(obj: JsValue, f: JsValue) -> Unit = "webapi_ExtendableEvent" "waitUntil"