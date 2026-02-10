extern "js" fn submit_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> SubmitEvent = "(type_, event_init_dict) => new SubmitEvent(type_, event_init_dict)"

extern "js" fn submit_event_submitter_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.submitter"

///|
fn submit_event_submitter_ffi(obj: JsValue) -> HTMLElement {
  submit_event_submitter_ffi_js(obj).unsafe_cast()
}