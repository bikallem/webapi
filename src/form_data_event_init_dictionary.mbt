// Do not edit. This file is generated.
// MoonBit type: FormDataEventInit
// Specifications: dom.idl, html.idl

///|
/// [FormDataEventInit](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEventInit)
#external
pub type FormDataEventInit

///|
pub impl TJsValue for FormDataEventInit with to_js(self : FormDataEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for FormDataEventInit with from_js_any(value : JsAny) -> FormDataEventInit = "%identity"

///|
pub fn FormDataEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  form_data : &TFormData,
) -> FormDataEventInit {
  form_data_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    TJsValue::to_js(form_data),
  )
}

///|
pub fn FormDataEventInit::empty() -> FormDataEventInit {
  form_data_event_init_empty_ffi()
}

///|
pub fn FormDataEventInit::bubbles(self : FormDataEventInit) -> Bool? {
  let result = form_data_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FormDataEventInit::cancelable(self : FormDataEventInit) -> Bool? {
  let result = form_data_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FormDataEventInit::composed(self : FormDataEventInit) -> Bool? {
  let result = form_data_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FormDataEventInit::form_data(self : FormDataEventInit) -> FormData {
  form_data_event_init_get_form_data_ffi(TJsValue::to_js(self))
}
