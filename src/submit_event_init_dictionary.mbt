///|
#external
pub type SubmitEventInit

///|
pub impl TJsValue for SubmitEventInit with to_js(self : SubmitEventInit) -> JsValue = "%identity"

///|
extern "js" fn submit_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  submitter : JsValue,
) -> SubmitEventInit =
  #|(bubbles, cancelable, composed, submitter) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (submitter !== undefined) obj.submitter = submitter;
  #|  return obj;
  #|}

///|
pub fn SubmitEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  submitter? : &THTMLElement = JsValue::null(),
) -> SubmitEventInit {
  submit_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(submitter),
  )
}

///|
extern "js" fn submit_event_init_empty_ffi() -> SubmitEventInit = "() => {}"

///|
pub fn SubmitEventInit::empty() -> SubmitEventInit {
  submit_event_init_empty_ffi()
}
