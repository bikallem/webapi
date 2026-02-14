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

///|
fn command_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_CommandEventInit" "get_bubbles"

///|
fn command_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_CommandEventInit" "get_cancelable"

///|
fn command_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_CommandEventInit" "get_composed"

///|
fn command_event_init_get_source_ffi(obj : JsValue) -> JsValue = "webapi_CommandEventInit" "get_source"

///|
fn command_event_init_get_command_ffi(obj : JsValue) -> JsValue = "webapi_CommandEventInit" "get_command"
