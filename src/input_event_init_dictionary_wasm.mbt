///|
fn input_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
  is_composing : JsValue,
  input_type : JsValue,
) -> InputEventInit = "webapi_InputEventInit" "new"

///|
fn input_event_init_empty_ffi() -> InputEventInit = "webapi_Dictionary" "empty"
