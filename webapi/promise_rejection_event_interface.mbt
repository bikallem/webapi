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
pub impl FromJsAny for PromiseRejectionEvent with from_js_any(value : JsAny) -> PromiseRejectionEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TPromiseRejectionEvent] PromiseRejectionEvent::into(
  self : PromiseRejectionEvent,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TPromiseRejectionEvent] PromiseRejectionEvent::unsafe_into(
  self : PromiseRejectionEvent,
) -> T = "%identity"

///|
pub impl HasConstructor for PromiseRejectionEvent with constructor_name() {
  "PromiseRejectionEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPromiseRejectionEvent + HasConstructor] PromiseRejectionEvent::try_into(
  self : PromiseRejectionEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PromiseRejectionEvent = "(type_, event_init_dict) => new PromiseRejectionEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_promise_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.promise"

///|
#cfg(target="js")
fn promise_rejection_event_promise_ffi(obj : JsValue) -> JsValue {
  promise_rejection_event_promise_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_reason_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
#cfg(target="js")
fn promise_rejection_event_reason_ffi(obj : JsValue) -> JsValue {
  promise_rejection_event_reason_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PromiseRejectionEvent = "webapi_PromiseRejectionEvent" "new"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_promise_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEvent" "get_promise"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_reason_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEvent" "get_reason"
