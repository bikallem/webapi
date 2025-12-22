///|
#external
pub type FormDataEvent

///|
pub impl TJsValue for FormDataEvent with to_js(self : FormDataEvent) -> JsValue = "%identity"

///|
pub fn[T : TFormDataEvent] FormDataEvent::into(self : FormDataEvent) -> T = "%identity"

///|
pub impl TFormDataEvent for FormDataEvent

///|
pub impl TEvent for FormDataEvent

///|
extern "js" fn form_data_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FormDataEvent = "(type_, event_init_dict) => new FormDataEvent(type_, event_init_dict)"

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
pub trait TFormDataEvent: TEvent {}
