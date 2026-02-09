///|
fn form_data_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  form_data : JsValue,
) -> FormDataEventInit = "webapi_FormDataEventInit" "new"

///|
fn form_data_event_init_empty_ffi() -> FormDataEventInit = "webapi_Dictionary" "empty"
