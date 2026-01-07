// Do not edit. This file is generated.
// MoonBit type: CustomEvent
// Specifications: dom.idl

///|
/// [CustomEvent](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent)
#external
pub type CustomEvent

///|
pub impl TJsValue for CustomEvent with to_js(self : CustomEvent) -> JsValue = "%identity"

///|
pub fn[T : TCustomEvent] CustomEvent::into(self : CustomEvent) -> T = "%identity"

///|
pub impl TCustomEvent for CustomEvent

///|
pub impl TEvent for CustomEvent

///|
extern "js" fn custom_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CustomEvent = "(type_, event_init_dict) => new CustomEvent(type_, event_init_dict)"

///|
pub fn CustomEvent::new(
  type_ : String,
  event_init_dict? : CustomEventInit = CustomEventInit::empty(),
) -> CustomEvent {
  custom_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
/// [CustomEvent](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent) interface.
pub trait TCustomEvent: TEvent {
  detail(self : Self) -> JsValue = _
  init_custom_event(
    self : Self,
    type_ : String,
    bubbles? : Bool,
    cancelable? : Bool,
    detail? : JsValue,
  ) -> Unit = _
}

///|
extern "js" fn custom_event_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
/// [CustomEvent.detail](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/detail)
impl TCustomEvent with detail(self : Self) -> JsValue {
  custom_event_detail_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn custom_event_init_custom_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  detail : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable, detail) => obj.initCustomEvent(type_, bubbles, cancelable, detail)"

///|
/// [CustomEvent.initCustomEvent](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/initCustomEvent)
impl TCustomEvent with init_custom_event(
  self : Self,
  type_ : String,
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  detail? : JsValue = JsValue::null(),
) -> Unit {
  custom_event_init_custom_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(detail),
  )
}
