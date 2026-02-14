// Do not edit. This file is generated.
// MoonBit type: TextEvent
// Specifications: uievents.idl

///|
/// [TextEvent](https://developer.mozilla.org/en-US/docs/Web/API/TextEvent)
#external
pub type TextEvent

///|
pub impl TJsValue for TextEvent with to_js(self : TextEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextEvent with from_js_any(value : JsAny) -> TextEvent = "%identity"

///|
pub fn[T : TTextEvent] TextEvent::into(self : TextEvent) -> T = "%identity"

///|
pub impl TTextEvent for TextEvent

///|
pub impl TUIEvent for TextEvent

///|
pub impl TEvent for TextEvent

///|
/// [TextEvent](https://developer.mozilla.org/en-US/docs/Web/API/TextEvent) interface.
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
/// [TextEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/TextEvent/data)
impl TTextEvent with data(self : Self) -> String {
  text_event_data_ffi(TJsValue::to_js(self))
}

///|
/// [TextEvent.initTextEvent](https://developer.mozilla.org/en-US/docs/Web/API/TextEvent/initTextEvent)
impl TTextEvent with init_text_event(
  self : Self,
  type_ : String,
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  view? : &TWindow,
  data? : String = "undefined",
) -> Unit {
  text_event_init_text_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    opt_to_js(view),
    TJsValue::to_js(data),
  )
}
