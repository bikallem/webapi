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
pub impl FromJsAny for EventSource with from_js_any(value : JsAny) -> EventSource = "%identity"

///|
pub fn[T : TEventSource] EventSource::into(self : EventSource) -> T = "%identity"

///|
pub impl TEventSource for EventSource

///|
pub impl TEventTarget for EventSource

///|
pub fn EventSource::new(
  url : String,
  event_source_init_dict? : EventSourceInit,
) -> EventSource {
  event_source_new_ffi(TJsValue::to_js(url), opt_to_js(event_source_init_dict))
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
  set_onopen(self : Self, onopen : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
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
impl TEventSource with set_onopen(self : Self, onopen : (Event) -> JsValue) -> Unit {
  event_source_set_onopen_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onopen)),
  )
}

///|
/// [EventSource.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onmessage)
impl TEventSource with onmessage(self : Self) -> EventHandler {
  event_source_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onmessage)
impl TEventSource with set_onmessage(
  self : Self,
  onmessage : (Event) -> JsValue,
) -> Unit {
  event_source_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [EventSource.onerror](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onerror)
impl TEventSource with onerror(self : Self) -> EventHandler {
  event_source_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [EventSource.onerror](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/onerror)
impl TEventSource with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  event_source_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [EventSource.close](https://developer.mozilla.org/en-US/docs/Web/API/EventSource/close)
impl TEventSource with close(self : Self) -> Unit {
  event_source_close_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn event_source_new_ffi(
  url : JsValue,
  event_source_init_dict : JsValue,
) -> EventSource = "(url, event_source_init_dict) => new EventSource(url, event_source_init_dict)"

///|
#cfg(target="js")
extern "js" fn event_source_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn event_source_url_ffi(obj : JsValue) -> String {
  event_source_url_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_source_with_credentials_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.withCredentials"

///|
#cfg(target="js")
fn event_source_with_credentials_ffi(obj : JsValue) -> Bool {
  event_source_with_credentials_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_source_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
#cfg(target="js")
fn event_source_ready_state_ffi(obj : JsValue) -> UInt {
  event_source_ready_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_source_onopen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onopen"

///|
#cfg(target="js")
fn event_source_onopen_ffi(obj : JsValue) -> EventHandler {
  event_source_onopen_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_source_set_onopen_ffi(
  obj : JsValue,
  onopen : JsValue,
) -> Unit = "(obj, onopen) => { obj.onopen = onopen; }"

///|
#cfg(target="js")
extern "js" fn event_source_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn event_source_onmessage_ffi(obj : JsValue) -> EventHandler {
  event_source_onmessage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_source_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
#cfg(target="js")
extern "js" fn event_source_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn event_source_onerror_ffi(obj : JsValue) -> EventHandler {
  event_source_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_source_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="js")
extern "js" fn event_source_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
#cfg(target="wasm-gc")
fn event_source_new_ffi(
  url : JsValue,
  event_source_init_dict : JsValue,
) -> EventSource = "webapi_EventSource" "new"

///|
#cfg(target="wasm-gc")
fn event_source_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_EventSource" "get_url"

///|
#cfg(target="wasm-gc")
fn event_source_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(event_source_url_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn event_source_with_credentials_ffi(obj : JsValue) -> Bool = "webapi_EventSource" "get_withCredentials"

///|
#cfg(target="wasm-gc")
fn event_source_ready_state_ffi(obj : JsValue) -> UInt = "webapi_EventSource" "get_readyState"

///|
#cfg(target="wasm-gc")
fn event_source_onopen_ffi_wasm(obj : JsValue) -> JsValue = "webapi_EventSource" "get_onopen"

///|
#cfg(target="wasm-gc")
fn event_source_onopen_ffi(obj : JsValue) -> EventHandler {
  event_source_onopen_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn event_source_set_onopen_ffi(obj : JsValue, onopen : JsValue) -> Unit = "webapi_EventSource" "set_onopen"

///|
#cfg(target="wasm-gc")
fn event_source_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_EventSource" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn event_source_onmessage_ffi(obj : JsValue) -> EventHandler {
  event_source_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn event_source_set_onmessage_ffi(obj : JsValue, onmessage : JsValue) -> Unit = "webapi_EventSource" "set_onmessage"

///|
#cfg(target="wasm-gc")
fn event_source_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_EventSource" "get_onerror"

///|
#cfg(target="wasm-gc")
fn event_source_onerror_ffi(obj : JsValue) -> EventHandler {
  event_source_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn event_source_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_EventSource" "set_onerror"

///|
#cfg(target="wasm-gc")
fn event_source_close_ffi(obj : JsValue) -> Unit = "webapi_EventSource" "close"
