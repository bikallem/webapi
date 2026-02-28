// Do not edit. This file is generated.
// MoonBit type: ExtendableEvent
// Specifications: service-workers.idl

///|
/// [ExtendableEvent](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEvent)
#external
pub type ExtendableEvent

///|
pub impl TJsValue for ExtendableEvent with to_js(self : ExtendableEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for ExtendableEvent with from_js_any(value : JsAny) -> ExtendableEvent = "%identity"

///|
pub fn[T : TExtendableEvent] ExtendableEvent::into(self : ExtendableEvent) -> T = "%identity"

///|
pub impl TExtendableEvent for ExtendableEvent

///|
pub impl TEvent for ExtendableEvent

///|
pub fn ExtendableEvent::new(
  type_ : String,
  event_init_dict? : ExtendableEventInit = ExtendableEventInit::empty(),
) -> ExtendableEvent {
  extendable_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [ExtendableEvent](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEvent) interface.
pub trait TExtendableEvent: TEvent {
  wait_until(self : Self, f : JsPromise[JsValue]) -> Unit = _
}

///|
/// [ExtendableEvent.waitUntil](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEvent/waitUntil)
impl TExtendableEvent with wait_until(self : Self, f : JsPromise[JsValue]) -> Unit {
  extendable_event_wait_until_ffi(TJsValue::to_js(self), TJsValue::to_js(f))
}
