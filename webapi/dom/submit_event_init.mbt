// Auto-generated MoonBit bindings for SubmitEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary SubmitEventInit : EventInit {
//   HTMLElement? submitter = null;
// };

///|
#external
pub type SubmitEventInit

///|
pub impl TJsValue for SubmitEventInit with to_js(self : SubmitEventInit) -> JsValue = "%identity"

///|
fn submit_event_init_ffi(submitter : JsValue) -> SubmitEventInit = "webapi_SubmitEventInit" "new"

///|
pub fn SubmitEventInit::new(
  submitter? : HTMLElement = JsValue::null()
) -> SubmitEventInit {
  submit_event_init_ffi(TJsValue::to_js(submitter))
}

///|
pub fn SubmitEventInit::empty() -> SubmitEventInit = "webapi_Dictionary" "empty"