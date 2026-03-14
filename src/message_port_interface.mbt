// Do not edit. This file is generated.
// MoonBit type: MessagePort
// Specifications: html.idl

///|
/// [MessagePort](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort)
#external
pub type MessagePort

///|
pub impl TJsValue for MessagePort with to_js(self : MessagePort) -> JsValue = "%identity"

///|
pub impl FromJsAny for MessagePort with from_js_any(value : JsAny) -> MessagePort = "%identity"

///|
pub fn[T : TMessagePort] MessagePort::into(self : MessagePort) -> T = "%identity"

///|
pub impl TMessagePort for MessagePort

///|
pub impl TEventTarget for MessagePort

///|
/// [MessagePort](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort) interface.
pub trait TMessagePort: TEventTarget {
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
  start(self : Self) -> Unit = _
  close(self : Self) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
}

///|
/// [MessagePort.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/postMessage)
impl TMessagePort with post_message(
  self : Self,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit {
  message_port_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(transfer),
  )
}

///|
/// [MessagePort.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/postMessage)
impl TMessagePort with post_message_with_options(
  self : Self,
  message : JsValue,
  options? : StructuredSerializeOptions,
) -> Unit {
  message_port_post_message_with_options_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    opt_to_js(options),
  )
}

///|
/// [MessagePort.start](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/start)
impl TMessagePort with start(self : Self) -> Unit {
  message_port_start_ffi(TJsValue::to_js(self))
}

///|
/// [MessagePort.close](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/close)
impl TMessagePort with close(self : Self) -> Unit {
  message_port_close_ffi(TJsValue::to_js(self))
}

///|
/// [MessagePort.onclose](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onclose)
impl TMessagePort with onclose(self : Self) -> EventHandler {
  message_port_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [MessagePort.onclose](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onclose)
impl TMessagePort with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  message_port_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [MessagePort.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onmessage)
impl TMessagePort with onmessage(self : Self) -> EventHandler {
  message_port_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [MessagePort.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onmessage)
impl TMessagePort with set_onmessage(
  self : Self,
  onmessage : (Event) -> JsValue,
) -> Unit {
  message_port_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [MessagePort.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onmessageerror)
impl TMessagePort with onmessageerror(self : Self) -> EventHandler {
  message_port_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [MessagePort.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/MessagePort/onmessageerror)
impl TMessagePort with set_onmessageerror(
  self : Self,
  onmessageerror : (Event) -> JsValue,
) -> Unit {
  message_port_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)),
  )
}

///|
#cfg(target="js")
extern "js" fn message_port_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

///|
#cfg(target="js")
extern "js" fn message_port_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

///|
#cfg(target="js")
extern "js" fn message_port_start_ffi(obj : JsValue) -> Unit = "(obj) => obj.start()"

///|
#cfg(target="js")
extern "js" fn message_port_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
#cfg(target="js")
extern "js" fn message_port_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
#cfg(target="js")
fn message_port_onclose_ffi(obj : JsValue) -> EventHandler {
  message_port_onclose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_port_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
#cfg(target="js")
extern "js" fn message_port_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn message_port_onmessage_ffi(obj : JsValue) -> EventHandler {
  message_port_onmessage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_port_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
#cfg(target="js")
extern "js" fn message_port_onmessageerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn message_port_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  message_port_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_port_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
#cfg(target="wasm-gc")
fn message_port_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_MessagePort" "postMessage"

///|
#cfg(target="wasm-gc")
fn message_port_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_MessagePort" "post_message_with_options"

///|
#cfg(target="wasm-gc")
fn message_port_start_ffi(obj : JsValue) -> Unit = "webapi_MessagePort" "start"

///|
#cfg(target="wasm-gc")
fn message_port_close_ffi(obj : JsValue) -> Unit = "webapi_MessagePort" "close"

///|
#cfg(target="wasm-gc")
fn message_port_onclose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessagePort" "get_onclose"

///|
#cfg(target="wasm-gc")
fn message_port_onclose_ffi(obj : JsValue) -> EventHandler {
  message_port_onclose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn message_port_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_MessagePort" "set_onclose"

///|
#cfg(target="wasm-gc")
fn message_port_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessagePort" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn message_port_onmessage_ffi(obj : JsValue) -> EventHandler {
  message_port_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn message_port_set_onmessage_ffi(obj : JsValue, onmessage : JsValue) -> Unit = "webapi_MessagePort" "set_onmessage"

///|
#cfg(target="wasm-gc")
fn message_port_onmessageerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MessagePort" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn message_port_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  message_port_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn message_port_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_MessagePort" "set_onmessageerror"
