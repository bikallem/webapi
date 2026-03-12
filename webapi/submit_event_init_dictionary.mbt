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
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  submitter? : &THTMLElement,
) -> SubmitEventInit {
  submit_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(submitter),
  )
}

///|
pub fn SubmitEventInit::empty() -> SubmitEventInit {
  submit_event_init_empty_ffi()
}

///|
pub fn SubmitEventInit::bubbles(self : SubmitEventInit) -> Bool? {
  submit_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn SubmitEventInit::cancelable(self : SubmitEventInit) -> Bool? {
  submit_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn SubmitEventInit::composed(self : SubmitEventInit) -> Bool? {
  submit_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn SubmitEventInit::submitter(self : SubmitEventInit) -> HTMLElement? {
  submit_event_init_get_submitter_ffi(TJsValue::to_js(self)).to_option()
}
