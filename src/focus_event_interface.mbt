// Do not edit. This file is generated.
// MoonBit type: FocusEvent
// Specifications: uievents.idl

/// [FocusEvent](https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent)
#external
pub type FocusEvent

pub impl TJsValue for FocusEvent with to_js(self: FocusEvent) -> JsValue = "%identity"

pub impl FromJsAny for FocusEvent with from_js_any(value : JsAny) -> FocusEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TFocusEvent] FocusEvent::into(self : FocusEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TFocusEvent] FocusEvent::unsafe_into(self : FocusEvent) -> T = "%identity"

pub impl HasConstructor for FocusEvent with constructor_name() { "FocusEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFocusEvent + HasConstructor] FocusEvent::try_into(self : FocusEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TFocusEvent for FocusEvent

pub impl TUIEvent for FocusEvent

pub impl TEvent for FocusEvent

pub fn FocusEvent::new(type_ : String, 
event_init_dict? : FocusEventInit) -> FocusEvent {
  focus_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [FocusEvent](https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent) interface.
pub trait TFocusEvent: TUIEvent {
  related_target(self : Self) -> EventTarget = _
}

/// [FocusEvent.relatedTarget](https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent/relatedTarget)
impl TFocusEvent with related_target(self : Self) -> EventTarget {
  focus_event_related_target_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn focus_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> FocusEvent = "(type_, event_init_dict) => new FocusEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn focus_event_related_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.relatedTarget"

///|
#cfg(target="js")
fn focus_event_related_target_ffi(obj: JsValue) -> EventTarget {
  focus_event_related_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn focus_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> FocusEvent = "webapi_FocusEvent" "new"

#cfg(target="wasm-gc")
fn focus_event_related_target_ffi(obj: JsValue) -> EventTarget = "webapi_FocusEvent" "get_relatedTarget"