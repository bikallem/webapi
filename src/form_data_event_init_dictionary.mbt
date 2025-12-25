// Do not edit. This file is generated.
// MoonBit type: FormDataEventInit
// Specifications: dom.idl, html.idl

///|
#external
pub type FormDataEventInit

///|
pub impl TJsValue for FormDataEventInit with to_js(self : FormDataEventInit) -> JsValue = "%identity"

///|
extern "js" fn form_data_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  form_data : JsValue,
) -> FormDataEventInit =
  #|(bubbles, cancelable, composed, formData) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (formData !== undefined) obj.formData = formData;
  #|  return obj;
  #|}

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
extern "js" fn form_data_event_init_empty_ffi() -> FormDataEventInit = "() => {}"

///|
pub fn FormDataEventInit::empty() -> FormDataEventInit {
  form_data_event_init_empty_ffi()
}
