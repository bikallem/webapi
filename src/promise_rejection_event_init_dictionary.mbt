// Do not edit. This file is generated.
// MoonBit type: PromiseRejectionEventInit
// Specifications: dom.idl, html.idl

///|
/// [PromiseRejectionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEventInit)
#external
pub type PromiseRejectionEventInit

///|
pub impl TJsValue for PromiseRejectionEventInit with to_js(
  self : PromiseRejectionEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PromiseRejectionEventInit with from_js_any(value : JsAny) -> PromiseRejectionEventInit = "%identity"

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
pub fn PromiseRejectionEventInit::empty() -> PromiseRejectionEventInit {
  promise_rejection_event_init_empty_ffi()
}
