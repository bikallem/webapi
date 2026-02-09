///|
fn message_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> MessageEventInit = "webapi_MessageEventInit" "new"

///|
fn message_event_init_empty_ffi() -> MessageEventInit = "webapi_Dictionary" "empty"
