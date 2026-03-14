// Do not edit. This file is generated.
// MoonBit type: MessageEvent
// Specifications: html.idl

///|
/// [MessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent)
#external
pub type MessageEvent

///|
pub impl TJsValue for MessageEvent with to_js(self : MessageEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for MessageEvent with from_js_any(value : JsAny) -> MessageEvent = "%identity"

///|
pub fn[T : TMessageEvent] MessageEvent::into(self : MessageEvent) -> T = "%identity"

///|
pub impl TMessageEvent for MessageEvent

///|
pub impl TEvent for MessageEvent

///|
pub fn MessageEvent::new(
  type_ : String,
  event_init_dict? : MessageEventInit,
) -> MessageEvent {
  message_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [MessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent) interface.
pub trait TMessageEvent: TEvent {
  data(self : Self) -> JsValue = _
  origin(self : Self) -> String = _
  last_event_id(self : Self) -> String = _
  source(self : Self) -> MessageEventSource = _
  ports(self : Self) -> Array[MessagePort] = _
  init_message_event(
    self : Self,
    type_ : String,
    bubbles? : Bool,
    cancelable? : Bool,
    data? : JsValue,
    origin? : String,
    last_event_id? : String,
    source? : &TMessageEventSource,
    ports? : Array[MessagePort],
  ) -> Unit = _
}

///|
/// [MessageEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/data)
impl TMessageEvent with data(self : Self) -> JsValue {
  message_event_data_ffi(TJsValue::to_js(self))
}

///|
/// [MessageEvent.origin](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/origin)
impl TMessageEvent with origin(self : Self) -> String {
  message_event_origin_ffi(TJsValue::to_js(self))
}

///|
/// [MessageEvent.lastEventId](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/lastEventId)
impl TMessageEvent with last_event_id(self : Self) -> String {
  message_event_last_event_id_ffi(TJsValue::to_js(self))
}

///|
/// [MessageEvent.source](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/source)
impl TMessageEvent with source(self : Self) -> MessageEventSource {
  message_event_source_ffi(TJsValue::to_js(self))
}

///|
/// [MessageEvent.ports](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/ports)
impl TMessageEvent with ports(self : Self) -> Array[MessagePort] {
  message_event_ports_ffi(TJsValue::to_js(self))
}

///|
/// [MessageEvent.initMessageEvent](https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/initMessageEvent)
impl TMessageEvent with init_message_event(
  self : Self,
  type_ : String,
  bubbles? : Bool,
  cancelable? : Bool,
  data? : JsValue,
  origin? : String,
  last_event_id? : String,
  source? : &TMessageEventSource,
  ports? : Array[MessagePort],
) -> Unit {
  message_event_init_message_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(data),
    opt_to_js(origin),
    opt_to_js(last_event_id),
    match source {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(ports),
  )
}

///|
#cfg(target="js")
extern "js" fn message_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MessageEvent = "(type_, event_init_dict) => new MessageEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn message_event_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
fn message_event_data_ffi(obj : JsValue) -> JsValue {
  message_event_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_event_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn message_event_origin_ffi(obj : JsValue) -> String {
  message_event_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_event_last_event_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastEventId"

///|
#cfg(target="js")
fn message_event_last_event_id_ffi(obj : JsValue) -> String {
  message_event_last_event_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_event_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
fn message_event_source_ffi(obj : JsValue) -> MessageEventSource {
  message_event_source_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_event_ports_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ports"

///|
#cfg(target="js")
fn message_event_ports_ffi(obj : JsValue) -> Array[MessagePort] {
  message_event_ports_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
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

///|
#cfg(target="wasm-gc")
fn message_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MessageEvent = "webapi_MessageEvent" "new"

///|
#cfg(target="wasm-gc")
fn message_event_data_ffi(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_data"

///|
#cfg(target="wasm-gc")
fn message_event_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_origin"

///|
#cfg(target="wasm-gc")
fn message_event_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(message_event_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn message_event_last_event_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_lastEventId"

///|
#cfg(target="wasm-gc")
fn message_event_last_event_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(message_event_last_event_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn message_event_source_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessageEvent" "get_source"

///|
#cfg(target="wasm-gc")
fn message_event_source_ffi(obj : JsValue) -> MessageEventSource {
  message_event_source_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn message_event_ports_ffi_wasm(obj : JsValue) -> JsArray = "webapi_MessageEvent" "get_ports"

///|
#cfg(target="wasm-gc")
fn message_event_ports_ffi(obj : JsValue) -> Array[MessagePort] {
  message_event_ports_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
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
