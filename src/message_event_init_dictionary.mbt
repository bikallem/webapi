// Do not edit. This file is generated.
// MoonBit type: MessageEventInit
// Specifications: dom.idl, html.idl

///|
#external
pub type MessageEventInit

///|
pub impl TJsValue for MessageEventInit with to_js(self : MessageEventInit) -> JsValue = "%identity"

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
pub fn MessageEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  data? : JsValue = JsValue::null(),
  origin? : String = "",
  last_event_id? : String = "",
  source? : MessageEventSource = JsValue::null(),
  ports? : Array[MessagePort] = [],
) -> MessageEventInit {
  message_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(data),
    TJsValue::to_js(origin),
    TJsValue::to_js(last_event_id),
    TJsValue::to_js(source),
    TJsValue::to_js(ports),
  )
}

///|
extern "js" fn message_event_init_empty_ffi() -> MessageEventInit = "() => {}"

///|
pub fn MessageEventInit::empty() -> MessageEventInit {
  message_event_init_empty_ffi()
}
