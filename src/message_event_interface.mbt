// Do not edit. This file is generated.
// MoonBit type: MessageEvent
// Specifications: html.idl

/// [MessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent)
#external
pub type MessageEvent

pub impl TJsValue for MessageEvent with to_js(self: MessageEvent) -> JsValue = "%identity"

pub fn[T: TMessageEvent] MessageEvent::into(self : MessageEvent) -> T = "%identity"

pub impl TMessageEvent for MessageEvent

pub impl TEvent for MessageEvent

pub fn MessageEvent::new(type_ : String, 
event_init_dict? : MessageEventInit = MessageEventInit::empty()) -> MessageEvent {
  message_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [MessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent) interface.
pub trait TMessageEvent: TEvent {
  data(self : Self) -> JsValue = _
  origin(self : Self) -> String = _
  last_event_id(self : Self) -> String = _
  source(self : Self) -> MessageEventSource = _
  ports(self : Self) -> JsValue = _
  init_message_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool, data? : JsValue, origin? : String, last_event_id? : String, source? : MessageEventSource, ports? : Array[MessagePort]) -> Unit = _
}

/// [MessageEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/data)
impl TMessageEvent with data(self : Self) -> JsValue {
  message_event_data_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MessageEvent.origin](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/origin)
impl TMessageEvent with origin(self : Self) -> String {
  message_event_origin_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MessageEvent.lastEventId](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/lastEventId)
impl TMessageEvent with last_event_id(self : Self) -> String {
  message_event_last_event_id_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MessageEvent.source](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/source)
impl TMessageEvent with source(self : Self) -> MessageEventSource {
  message_event_source_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MessageEvent.ports](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/ports)
impl TMessageEvent with ports(self : Self) -> JsValue {
  message_event_ports_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MessageEvent.initMessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/initMessageEvent)
impl TMessageEvent with init_message_event(self : Self, 
type_ : String, 
bubbles? : Bool = false, 
cancelable? : Bool = false, 
data? : JsValue = JsValue::null(), 
origin? : String = "", 
last_event_id? : String = "", 
source? : MessageEventSource = JsValue::null(), 
ports? : Array[MessagePort] = []) -> Unit {
  message_event_init_message_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(data), TJsValue::to_js(origin), TJsValue::to_js(last_event_id), TJsValue::to_js(source), TJsValue::to_js(ports))
}