///|
#external
pub type MessageEvent

///|
pub impl TJsValue for MessageEvent with to_js(self : MessageEvent) -> JsValue = "%identity"

///|
pub fn[T : TMessageEvent] MessageEvent::into(self : MessageEvent) -> T = "%identity"

///|
pub impl TMessageEvent for MessageEvent

///|
pub impl TEvent for MessageEvent

///|
extern "js" fn message_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MessageEvent = "(type_, event_init_dict) => new MessageEvent(type_, event_init_dict)"

///|
pub fn MessageEvent::new(
  type_ : String,
  event_init_dict? : MessageEventInit = MessageEventInit::empty(),
) -> MessageEvent {
  message_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TMessageEvent: TEvent {
  init_message_event(
    self : Self,
    type_ : String,
    bubbles? : Bool,
    cancelable? : Bool,
    data? : JsValue,
    origin? : String,
    last_event_id? : String,
    source? : MessageEventSource,
    ports? : Array[MessagePort],
  ) -> Unit = _
}

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
) -> Unit = "(obj, type_, bubbles, cancelable, data, origin, last_event_id, source, ports) => obj.initMessageEvent(obj, type_, bubbles, cancelable, data, origin, last_event_id, source, ports)"

///|
impl TMessageEvent with init_message_event(
  self : Self,
  type_ : String,
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  data? : JsValue = JsValue::null(),
  origin? : String = "",
  last_event_id? : String = "",
  source? : MessageEventSource = JsValue::null(),
  ports? : Array[MessagePort] = [],
) -> Unit {
  message_event_init_message_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(data),
    TJsValue::to_js(origin),
    TJsValue::to_js(last_event_id),
    TJsValue::to_js(source),
    TJsValue::to_js(ports),
  )
}
