// Do not edit. This file is generated.
// MoonBit type: SubmitEventInit
// Specifications: dom.idl, html.idl

///|
/// [SubmitEventInit](https://developer.mozilla.org/en-US/docs/Web/API/SubmitEventInit)
#external
pub type SubmitEventInit

///|
pub impl TJsValue for SubmitEventInit with to_js(self : SubmitEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for SubmitEventInit with from_js_any(value : JsAny) -> SubmitEventInit = "%identity"

///|
pub fn SubmitEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  submitter? : &THTMLElement,
) -> SubmitEventInit {
  submit_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(submitter),
  )
}

///|
pub fn SubmitEventInit::empty() -> SubmitEventInit {
  submit_event_init_empty_ffi()
}
