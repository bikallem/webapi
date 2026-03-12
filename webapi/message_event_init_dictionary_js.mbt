extern "js" fn message_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, data: JsValue, origin: JsValue, last_event_id: JsValue, source: JsValue, ports: JsValue) -> MessageEventInit = 
#|(bubbles, cancelable, composed, data, origin, lastEventId, source, ports) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (data !== undefined) obj.data = data;
#|  if (origin !== undefined) obj.origin = origin;
#|  if (lastEventId !== undefined) obj.lastEventId = lastEventId;
#|  if (source !== undefined) obj.source = source;
#|  if (ports !== undefined) obj.ports = ports;
#|  return obj;
#|}

extern "js" fn message_event_init_empty_ffi() -> MessageEventInit = "() => {}"

extern "js" fn message_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn message_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn message_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn message_event_init_get_data_ffi(obj: JsValue) -> JsValue = "(obj) => obj.data"

extern "js" fn message_event_init_get_origin_ffi(obj: JsValue) -> JsValue = "(obj) => obj.origin"

extern "js" fn message_event_init_get_last_event_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lastEventId"

extern "js" fn message_event_init_get_source_ffi(obj: JsValue) -> JsValue = "(obj) => obj.source"

extern "js" fn message_event_init_get_ports_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ports"