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
pub fn[T : TCompositionEvent] CompositionEvent::into(
  self : CompositionEvent,
) -> T = "%identity"

///|
pub impl TCompositionEvent for CompositionEvent

///|
pub impl TUIEvent for CompositionEvent

///|
pub impl TEvent for CompositionEvent

///|
extern "js" fn composition_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CompositionEvent = "(type_, event_init_dict) => new CompositionEvent(type_, event_init_dict)"

///|
pub fn CompositionEvent::new(
  type_ : String,
  event_init_dict? : CompositionEventInit = CompositionEventInit::empty(),
) -> CompositionEvent {
  composition_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
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
extern "js" fn composition_event_data_ffi(obj : JsValue) -> String = "(obj) => obj.data"

///|
/// [CompositionEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent/data)
impl TCompositionEvent with data(self : Self) -> String {
  composition_event_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn composition_event_init_composition_event_ffi(
  obj : JsValue,
  type_arg : JsValue,
  bubbles_arg : JsValue,
  cancelable_arg : JsValue,
  view_arg : JsValue,
  data_arg : JsValue,
) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg) => obj.initCompositionEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg)"

///|
/// [CompositionEvent.initCompositionEvent](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent/initCompositionEvent)
impl TCompositionEvent with init_composition_event(
  self : Self,
  type_arg : String,
  bubbles_arg? : Bool = false,
  cancelable_arg? : Bool = false,
  view_arg? : WindowProxy = JsValue::null(),
  data_arg? : String = "",
) -> Unit {
  composition_event_init_composition_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_arg),
    TJsValue::to_js(bubbles_arg),
    TJsValue::to_js(cancelable_arg),
    TJsValue::to_js(view_arg),
    TJsValue::to_js(data_arg),
  )
}
