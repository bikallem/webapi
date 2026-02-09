///|
extern "js" fn message_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> MessageEventInit =
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

///|
extern "js" fn message_event_init_empty_ffi() -> MessageEventInit = "() => {}"
