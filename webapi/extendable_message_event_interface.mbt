// Do not edit. This file is generated.
// MoonBit type: ExtendableMessageEvent
// Specifications: service-workers.idl

///|
/// [ExtendableMessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent)
#external
pub type ExtendableMessageEvent

///|
pub impl TJsValue for ExtendableMessageEvent with to_js(
  self : ExtendableMessageEvent,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ExtendableMessageEvent with from_js_any(value : JsAny) -> ExtendableMessageEvent = "%identity"

///|
pub fn[T : TExtendableMessageEvent] ExtendableMessageEvent::into(
  self : ExtendableMessageEvent,
) -> T = "%identity"

///|
pub impl TExtendableMessageEvent for ExtendableMessageEvent

///|
pub impl TExtendableEvent for ExtendableMessageEvent

///|
pub impl TEvent for ExtendableMessageEvent

///|
pub fn ExtendableMessageEvent::new(
  type_ : String,
  event_init_dict? : ExtendableMessageEventInit = ExtendableMessageEventInit::empty(),
) -> ExtendableMessageEvent {
  extendable_message_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
#external
pub type ExtendableMessageEventSource

///|
pub impl TJsValue for ExtendableMessageEventSource with to_js(
  self : ExtendableMessageEventSource,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ExtendableMessageEventSource with from_js_any(
  value : JsAny,
) -> ExtendableMessageEventSource = "%identity"

///|
pub fn[T : TExtendableMessageEventSource + FromJsAny] ExtendableMessageEventSource::into(
  self : ExtendableMessageEventSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TExtendableMessageEventSource] ExtendableMessageEventSource::from(
  value : T,
) -> ExtendableMessageEventSource = "%identity"

///|
pub impl TExtendableMessageEventSource for ExtendableMessageEventSource with to_js(
  self : ExtendableMessageEventSource,
) -> JsValue = "%identity"

///|
pub(open) trait TExtendableMessageEventSource {
  to_js(self : Self) -> JsValue
}

///|
pub impl TExtendableMessageEventSource for Client with to_js(self : Client) -> JsValue = "%identity"

///|
pub impl TExtendableMessageEventSource for ServiceWorker with to_js(
  self : ServiceWorker,
) -> JsValue = "%identity"

///|
pub impl TExtendableMessageEventSource for MessagePort with to_js(
  self : MessagePort,
) -> JsValue = "%identity"

///|
/// [ExtendableMessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent) interface.
pub trait TExtendableMessageEvent: TExtendableEvent {
  data(self : Self) -> JsValue = _
  origin(self : Self) -> String = _
  last_event_id(self : Self) -> String = _
  source(self : Self) -> ExtendableMessageEventSource = _
  ports(self : Self) -> Array[MessagePort] = _
}

///|
/// [ExtendableMessageEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent/data)
impl TExtendableMessageEvent with data(self : Self) -> JsValue {
  extendable_message_event_data_ffi(TJsValue::to_js(self))
}

///|
/// [ExtendableMessageEvent.origin](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent/origin)
impl TExtendableMessageEvent with origin(self : Self) -> String {
  extendable_message_event_origin_ffi(TJsValue::to_js(self))
}

///|
/// [ExtendableMessageEvent.lastEventId](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent/lastEventId)
impl TExtendableMessageEvent with last_event_id(self : Self) -> String {
  extendable_message_event_last_event_id_ffi(TJsValue::to_js(self))
}

///|
/// [ExtendableMessageEvent.source](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent/source)
impl TExtendableMessageEvent with source(self : Self) -> ExtendableMessageEventSource {
  extendable_message_event_source_ffi(TJsValue::to_js(self))
}

///|
/// [ExtendableMessageEvent.ports](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent/ports)
impl TExtendableMessageEvent with ports(self : Self) -> Array[MessagePort] {
  extendable_message_event_ports_ffi(TJsValue::to_js(self))
}
