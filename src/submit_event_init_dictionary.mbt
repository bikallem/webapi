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

///|
pub fn SubmitEventInit::bubbles(self : SubmitEventInit) -> Bool? {
  let result = submit_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn SubmitEventInit::cancelable(self : SubmitEventInit) -> Bool? {
  let result = submit_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn SubmitEventInit::composed(self : SubmitEventInit) -> Bool? {
  let result = submit_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn SubmitEventInit::submitter(self : SubmitEventInit) -> HTMLElement? {
  let result = submit_event_init_get_submitter_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
