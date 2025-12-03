// Auto-generated MoonBit bindings for FormDataEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary FormDataEventInit : EventInit {
//   required FormData formData;
// };

///|
#external
pub type FormDataEventInit

///|
pub impl TJsValue for FormDataEventInit with to_js(self : FormDataEventInit) -> JsValue = "%identity"

///|
fn form_data_event_init_ffi(form_data : JsValue) -> FormDataEventInit = "webapi_FormDataEventInit" "new"

///|
pub fn FormDataEventInit::new(
  form_data : JsValue
) -> FormDataEventInit {
  form_data_event_init_ffi(form_data)
}

///|
pub fn FormDataEventInit::empty() -> FormDataEventInit = "webapi_Dictionary" "empty"