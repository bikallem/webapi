// Do not edit. This file is generated.
// MoonBit type: EventInit
// Specifications: dom.idl

///|
/// [EventInit](https://developer.mozilla.org/en-US/docs/Web/API/EventInit)
#external
pub type EventInit

///|
pub impl TJsValue for EventInit with to_js(self : EventInit) -> JsValue = "%identity"

///|
extern "js" fn event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
) -> EventInit =
  #|(bubbles, cancelable, composed) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  return obj;
  #|}

///|
pub fn EventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
) -> EventInit {
  event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
  )
}

///|
extern "js" fn event_init_empty_ffi() -> EventInit = "() => {}"

///|
pub fn EventInit::empty() -> EventInit {
  event_init_empty_ffi()
}
