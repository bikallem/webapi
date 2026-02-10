// Do not edit. This file is generated.
// MoonBit type: EventSource
// Specifications: html.idl

///|
/// [EventSource](https://developer.mozilla.org/en-US/docs/Web/API/EventSource)
#external
pub type EventSource

///|
pub impl TJsValue for EventSource with to_js(self : EventSource) -> JsValue = "%identity"

///|
pub fn[T : TEventSource] EventSource::into(self : EventSource) -> T = "%identity"

///|
pub impl TEventSource for EventSource

///|
pub impl TEventTarget for EventSource

///|
pub fn EventSource::new(
  url : String,
  event_source_init_dict? : EventSourceInit = EventSourceInit::empty(),
) -> EventSource {
  event_source_new_ffi(
    TJsValue::to_js(url),
    TJsValue::to_js(event_source_init_dict),
  )
}

///|
pub const EVENT_SOURCE_CONNECTING : UInt = 0

///|
pub const EVENT_SOURCE_OPEN : UInt = 1

///|
pub const EVENT_SOURCE_CLOSED : UInt = 2

///|
/// [EventSource](https://developer.mozilla.org/en-US/docs/Web/API/EventSource) interface.
pub trait TEventSource: TEventTarget {
  url(self : Self) -> String = _
  with_credentials(self : Self) -> Bool = _
  ready_state(self : Self) -> UInt = _
  onopen(self : Self) -> EventHandler = _
  set_onopen(self : Self, onopen : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : EventHandler) -> Unit = _
  close(self : Self) -> Unit = _
}

///|
/// [EventSource.url](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/url)
impl TEventSource with url(self : Self) -> String {
  event_source_url_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.withCredentials](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/withCredentials)
impl TEventSource with with_credentials(self : Self) -> Bool {
  event_source_with_credentials_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.readyState](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/readyState)
impl TEventSource with ready_state(self : Self) -> UInt {
  event_source_ready_state_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.onopen](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onopen)
impl TEventSource with onopen(self : Self) -> EventHandler {
  event_source_onopen_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.onopen](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onopen)
impl TEventSource with set_onopen(self : Self, onopen : EventHandler) -> Unit {
  event_source_set_onopen_ffi(TJsValue::to_js(self), TJsValue::to_js(onopen))
}

///|
/// [EventSource.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onmessage)
impl TEventSource with onmessage(self : Self) -> EventHandler {
  event_source_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onmessage)
impl TEventSource with set_onmessage(self : Self, onmessage : EventHandler) -> Unit {
  event_source_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
/// [EventSource.onerror](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onerror)
impl TEventSource with onerror(self : Self) -> EventHandler {
  event_source_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.onerror](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onerror)
impl TEventSource with set_onerror(self : Self, onerror : EventHandler) -> Unit {
  event_source_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
/// [EventSource.close](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/close)
impl TEventSource with close(self : Self) -> Unit {
  event_source_close_ffi(TJsValue::to_js(self))
}
