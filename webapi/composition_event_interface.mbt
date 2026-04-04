// Do not edit. This file is generated.
// MoonBit type: CompositionEvent
// Specifications: uievents.idl

///|
/// [CompositionEvent](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent)
#external
pub type CompositionEvent

///|
pub impl TJsValue for CompositionEvent with to_js(self : CompositionEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for CompositionEvent with from_js_any(value : JsAny) -> CompositionEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCompositionEvent] CompositionEvent::into(
  self : CompositionEvent,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCompositionEvent] CompositionEvent::unsafe_into(
  self : CompositionEvent,
) -> T = "%identity"

///|
pub impl HasConstructor for CompositionEvent with constructor_name() {
  "CompositionEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCompositionEvent + HasConstructor] CompositionEvent::try_into(
  self : CompositionEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCompositionEvent for CompositionEvent

///|
pub impl TUIEvent for CompositionEvent

///|
pub impl TEvent for CompositionEvent

///|
pub fn CompositionEvent::new(
  type_ : String,
  event_init_dict? : CompositionEventInit,
) -> CompositionEvent {
  composition_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [CompositionEvent](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent) interface.
pub trait TCompositionEvent: TUIEvent {
  data(self : Self) -> String = _
  init_composition_event(
    self : Self,
    type_arg : String,
    bubbles_arg? : Bool,
    cancelable_arg? : Bool,
    view_arg? : WindowProxy,
    data_arg? : String,
  ) -> Unit = _
}

///|
/// [CompositionEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent/data)
impl TCompositionEvent with data(self : Self) -> String {
  composition_event_data_ffi(TJsValue::to_js(self))
}

///|
/// [CompositionEvent.initCompositionEvent](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent/initCompositionEvent)
impl TCompositionEvent with init_composition_event(
  self : Self,
  type_arg : String,
  bubbles_arg? : Bool,
  cancelable_arg? : Bool,
  view_arg? : WindowProxy,
  data_arg? : String,
) -> Unit {
  composition_event_init_composition_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_arg),
    opt_to_js(bubbles_arg),
    opt_to_js(cancelable_arg),
    opt_to_js(view_arg),
    opt_to_js(data_arg),
  )
}

///|
#cfg(target="js")
extern "js" fn composition_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CompositionEvent = "(type_, event_init_dict) => new CompositionEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn composition_event_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
fn composition_event_data_ffi(obj : JsValue) -> String {
  composition_event_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn composition_event_init_composition_event_ffi(
  obj : JsValue,
  type_arg : JsValue,
  bubbles_arg : JsValue,
  cancelable_arg : JsValue,
  view_arg : JsValue,
  data_arg : JsValue,
) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg) => obj.initCompositionEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg)"

///|
#cfg(target="wasm-gc")
fn composition_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CompositionEvent = "webapi_CompositionEvent" "new"

///|
#cfg(target="wasm-gc")
fn composition_event_data_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CompositionEvent" "get_data"

///|
#cfg(target="wasm-gc")
fn composition_event_data_ffi(obj : JsValue) -> String {
  jsvalue_to_string(composition_event_data_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn composition_event_init_composition_event_ffi(
  obj : JsValue,
  type_arg : JsValue,
  bubbles_arg : JsValue,
  cancelable_arg : JsValue,
  view_arg : JsValue,
  data_arg : JsValue,
) -> Unit = "webapi_CompositionEvent" "initCompositionEvent"
