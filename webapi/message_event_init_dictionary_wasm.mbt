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

///|
fn message_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_bubbles"

///|
fn message_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_cancelable"

///|
fn message_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_composed"

///|
fn message_event_init_get_data_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_data"

///|
fn message_event_init_get_origin_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_origin"

///|
fn message_event_init_get_last_event_id_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_lastEventId"

///|
fn message_event_init_get_source_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_source"

///|
fn message_event_init_get_ports_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_ports"
