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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TExtendableMessageEvent] ExtendableMessageEvent::into(
  self : ExtendableMessageEvent,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TExtendableMessageEvent] ExtendableMessageEvent::unsafe_into(
  self : ExtendableMessageEvent,
) -> T = "%identity"

///|
pub impl HasConstructor for ExtendableMessageEvent with constructor_name() {
  "ExtendableMessageEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TExtendableMessageEvent + HasConstructor] ExtendableMessageEvent::try_into(
  self : ExtendableMessageEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TExtendableMessageEvent for ExtendableMessageEvent

///|
pub impl TExtendableEvent for ExtendableMessageEvent

///|
pub impl TEvent for ExtendableMessageEvent

///|
pub fn ExtendableMessageEvent::new(
  type_ : String,
  event_init_dict? : ExtendableMessageEventInit,
) -> ExtendableMessageEvent {
  extendable_message_event_new_ffi(
    TJsValue::to_js(type_),
    opt_to_js(event_init_dict),
  )
}

///|
pub(open) trait TExtendableMessageEventSource: TJsValue {}

///|
pub impl TExtendableMessageEventSource for Client

///|
pub impl TExtendableMessageEventSource for ServiceWorker

///|
pub impl TExtendableMessageEventSource for MessagePort

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
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TExtendableMessageEventSource + FromJsAny] ExtendableMessageEventSource::into(
  self : ExtendableMessageEventSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TExtendableMessageEventSource + FromJsAny] ExtendableMessageEventSource::unsafe_into(
  self : ExtendableMessageEventSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TExtendableMessageEventSource] ExtendableMessageEventSource::from(
  value : T,
) -> ExtendableMessageEventSource = "%identity"

///|
pub impl TExtendableMessageEventSource for ExtendableMessageEventSource

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

///|
#cfg(target="js")
extern "js" fn extendable_message_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ExtendableMessageEvent = "(type_, event_init_dict) => new ExtendableMessageEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
fn extendable_message_event_data_ffi(obj : JsValue) -> JsValue {
  extendable_message_event_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn extendable_message_event_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn extendable_message_event_origin_ffi(obj : JsValue) -> String {
  extendable_message_event_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn extendable_message_event_last_event_id_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lastEventId"

///|
#cfg(target="js")
fn extendable_message_event_last_event_id_ffi(obj : JsValue) -> String {
  extendable_message_event_last_event_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn extendable_message_event_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
fn extendable_message_event_source_ffi(
  obj : JsValue,
) -> ExtendableMessageEventSource {
  extendable_message_event_source_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn extendable_message_event_ports_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ports"

///|
#cfg(target="js")
fn extendable_message_event_ports_ffi(obj : JsValue) -> Array[MessagePort] {
  extendable_message_event_ports_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn extendable_message_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ExtendableMessageEvent = "webapi_ExtendableMessageEvent" "new"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_data_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_data"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_origin"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(extendable_message_event_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn extendable_message_event_last_event_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_lastEventId"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_last_event_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(extendable_message_event_last_event_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn extendable_message_event_source_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_source"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_source_ffi(
  obj : JsValue,
) -> ExtendableMessageEventSource {
  extendable_message_event_source_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn extendable_message_event_ports_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ExtendableMessageEvent" "get_ports"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_ports_ffi(obj : JsValue) -> Array[MessagePort] {
  extendable_message_event_ports_ffi_wasm(obj).to_array()
}
