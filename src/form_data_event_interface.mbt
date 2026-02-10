// Do not edit. This file is generated.
// MoonBit type: FormDataEvent
// Specifications: html.idl

/// [FormDataEvent](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent)
#external
pub type FormDataEvent

pub impl TJsValue for FormDataEvent with to_js(self: FormDataEvent) -> JsValue = "%identity"

pub fn[T: TFormDataEvent] FormDataEvent::into(self : FormDataEvent) -> T = "%identity"

pub impl TFormDataEvent for FormDataEvent

pub impl TEvent for FormDataEvent

pub fn FormDataEvent::new(type_ : String, 
event_init_dict : FormDataEventInit) -> FormDataEvent {
  form_data_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [FormDataEvent](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent) interface.
pub trait TFormDataEvent: TEvent {
  form_data(self : Self) -> FormData = _
}

/// [FormDataEvent.formData](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent/formData)
impl TFormDataEvent with form_data(self : Self) -> FormData {
  form_data_event_form_data_ffi(TJsValue::to_js(self))
}