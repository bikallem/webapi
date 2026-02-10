///|
fn message_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MessageEvent = "webapi_MessageEvent" "new"

///|
fn message_event_data_ffi(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_data"

///|
fn message_event_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_origin"

///|
fn message_event_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(message_event_origin_ffi_wasm(obj))
}

///|
fn message_event_last_event_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_lastEventId"

///|
fn message_event_last_event_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(message_event_last_event_id_ffi_wasm(obj))
}

///|
fn message_event_source_ffi(obj : JsValue) -> MessageEventSource = "webapi_MessageEvent" "get_source"

///|
fn message_event_ports_ffi(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_ports"

///|
fn message_event_init_message_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> Unit = "webapi_MessageEvent" "initMessageEvent"
