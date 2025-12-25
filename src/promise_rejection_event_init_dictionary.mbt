// Do not edit. This file is generated.
// MoonBit type: PromiseRejectionEventInit
// Specifications: dom.idl, html.idl

///|
#external
pub type PromiseRejectionEventInit

///|
pub impl TJsValue for PromiseRejectionEventInit with to_js(
  self : PromiseRejectionEventInit,
) -> JsValue = "%identity"

///|
extern "js" fn promise_rejection_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  promise : JsValue,
  reason : JsValue,
) -> PromiseRejectionEventInit =
  #|(bubbles, cancelable, composed, promise, reason) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (promise !== undefined) obj.promise = promise;
  #|  if (reason !== undefined) obj.reason = reason;
  #|  return obj;
  #|}

///|
pub fn PromiseRejectionEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  promise : JsValue,
  reason? : JsValue,
) -> PromiseRejectionEventInit {
  promise_rejection_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(promise),
    opt_to_js(reason),
  )
}

///|
extern "js" fn promise_rejection_event_init_empty_ffi() -> PromiseRejectionEventInit = "() => {}"

///|
pub fn PromiseRejectionEventInit::empty() -> PromiseRejectionEventInit {
  promise_rejection_event_init_empty_ffi()
}
