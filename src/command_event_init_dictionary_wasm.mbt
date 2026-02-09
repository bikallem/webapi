///|
fn command_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  source : JsValue,
  command : JsValue,
) -> CommandEventInit = "webapi_CommandEventInit" "new"

///|
fn command_event_init_empty_ffi() -> CommandEventInit = "webapi_Dictionary" "empty"
