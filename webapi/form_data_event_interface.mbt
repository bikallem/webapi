// Do not edit. This file is generated.
// MoonBit type: FormDataEvent
// Specifications: html.idl

///|
/// [FormDataEvent](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent)
#external
pub type FormDataEvent

///|
pub impl TJsValue for FormDataEvent with to_js(self : FormDataEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for FormDataEvent with from_js_any(value : JsAny) -> FormDataEvent = "%identity"

///|
pub fn[T : TFormDataEvent] FormDataEvent::into(self : FormDataEvent) -> T = "%identity"

///|
pub impl TFormDataEvent for FormDataEvent

///|
pub impl TEvent for FormDataEvent

///|
pub fn FormDataEvent::new(
  type_ : String,
  event_init_dict : FormDataEventInit,
) -> FormDataEvent {
  form_data_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [FormDataEvent](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent) interface.
pub trait TFormDataEvent: TEvent {
  form_data(self : Self) -> FormData = _
}

///|
/// [FormDataEvent.formData](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent/formData)
impl TFormDataEvent with form_data(self : Self) -> FormData {
  form_data_event_form_data_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn form_data_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FormDataEvent = "(type_, event_init_dict) => new FormDataEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn form_data_event_form_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.formData"

///|
#cfg(target="js")
fn form_data_event_form_data_ffi(obj : JsValue) -> FormData {
  form_data_event_form_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn form_data_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FormDataEvent = "webapi_FormDataEvent" "new"

///|
#cfg(target="wasm-gc")
fn form_data_event_form_data_ffi(obj : JsValue) -> FormData = "webapi_FormDataEvent" "get_formData"
