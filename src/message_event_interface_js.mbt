///|
extern "js" fn message_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MessageEvent = "(type_, event_init_dict) => new MessageEvent(type_, event_init_dict)"

///|
extern "js" fn message_event_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
extern "js" fn message_event_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
extern "js" fn message_event_last_event_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lastEventId"

///|
extern "js" fn message_event_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
extern "js" fn message_event_ports_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ports"

///|
extern "js" fn message_event_init_message_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable, data, origin, last_event_id, source, ports) => obj.initMessageEvent(type_, bubbles, cancelable, data, origin, last_event_id, source, ports)"
