///|
fn submit_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> SubmitEvent = "webapi_SubmitEvent" "new"

///|
fn submit_event_submitter_ffi(obj : JsValue) -> HTMLElement = "webapi_SubmitEvent" "get_submitter"
