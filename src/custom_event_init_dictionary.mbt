///|
#external
pub type CustomEventInit

///|
pub impl TJsValue for CustomEventInit with to_js(self : CustomEventInit) -> JsValue = "%identity"

///|
extern "js" fn custom_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  detail : JsValue,
) -> CustomEventInit =
  #|(bubbles, cancelable, composed, detail) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  return obj;
  #|}

///|
pub fn CustomEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  detail? : JsValue = JsValue::null(),
) -> CustomEventInit {
  custom_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(detail),
  )
}

///|
extern "js" fn custom_event_init_empty_ffi() -> CustomEventInit = "() => {}"

///|
pub fn CustomEventInit::empty() -> CustomEventInit {
  custom_event_init_empty_ffi()
}
