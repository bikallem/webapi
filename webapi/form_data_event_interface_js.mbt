///|
extern "js" fn form_data_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FormDataEvent = "(type_, event_init_dict) => new FormDataEvent(type_, event_init_dict)"

///|
extern "js" fn form_data_event_form_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.formData"

///|
fn form_data_event_form_data_ffi(obj : JsValue) -> FormData {
  form_data_event_form_data_ffi_js(obj).unsafe_cast()
}
