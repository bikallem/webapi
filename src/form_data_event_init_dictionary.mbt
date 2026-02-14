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
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  form_data : &TFormData,
) -> FormDataEventInit {
  form_data_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(form_data),
  )
}

///|
pub fn FormDataEventInit::empty() -> FormDataEventInit {
  form_data_event_init_empty_ffi()
}
