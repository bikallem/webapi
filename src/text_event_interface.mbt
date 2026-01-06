// Do not edit. This file is generated.
// MoonBit type: TextEvent
// Specifications: uievents.idl

///|
#external
pub type TextEvent

///|
pub impl TJsValue for TextEvent with to_js(self : TextEvent) -> JsValue = "%identity"

///|
pub fn[T : TTextEvent] TextEvent::into(self : TextEvent) -> T = "%identity"

///|
pub impl TTextEvent for TextEvent

///|
pub impl TUIEvent for TextEvent

///|
pub impl TEvent for TextEvent

///|
pub trait TTextEvent: TUIEvent {
  data(self : Self) -> String = _
  init_text_event(
    self : Self,
    type_ : String,
    bubbles? : Bool,
    cancelable? : Bool,
    view? : &TWindow,
    data? : String,
  ) -> Unit = _
}

///|
extern "js" fn text_event_data_ffi(obj : JsValue) -> String = "(obj) => obj.data"

///|
impl TTextEvent with data(self : Self) -> String {
  text_event_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_event_init_text_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  view : JsValue,
  data : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable, view, data) => obj.initTextEvent(type_, bubbles, cancelable, view, data)"

///|
impl TTextEvent with init_text_event(
  self : Self,
  type_ : String,
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  view? : &TWindow = JsValue::null(),
  data? : String = "undefined",
) -> Unit {
  text_event_init_text_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(view),
    TJsValue::to_js(data),
  )
}
