// Do not edit. This file is generated.
// MoonBit type: WebSocket
// Specifications: websockets.idl

/// [WebSocket](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket)
#external
pub type WebSocket

pub impl TJsValue for WebSocket with to_js(self: WebSocket) -> JsValue = "%identity"

pub impl FromJsAny for WebSocket with from_js_any(value : JsAny) -> WebSocket = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TWebSocket] WebSocket::into(self : WebSocket) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TWebSocket] WebSocket::unsafe_into(self : WebSocket) -> T = "%identity"

pub impl HasConstructor for WebSocket with constructor_name() { "WebSocket" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWebSocket + HasConstructor] WebSocket::try_into(self : WebSocket) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TWebSocket for WebSocket

pub impl TEventTarget for WebSocket

pub(open) trait TWebSocketNewProtocols : TJsValue {}

pub impl TWebSocketNewProtocols for String

pub impl TWebSocketNewProtocols for Array[String]

pub fn WebSocket::new(url : String, 
protocols? : &TWebSocketNewProtocols) -> WebSocket {
  web_socket_new_ffi(TJsValue::to_js(url), match protocols {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub const WEB_SOCKET_CONNECTING: UInt = 0

pub const WEB_SOCKET_OPEN: UInt = 1

pub const WEB_SOCKET_CLOSING: UInt = 2

pub const WEB_SOCKET_CLOSED: UInt = 3

pub(open) trait TWebSocketSendData : TJsValue {}

pub impl TWebSocketSendData for BufferSource

pub impl TWebSocketSendData for Blob

pub impl TWebSocketSendData for String

/// [WebSocket](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket) interface.
pub trait TWebSocket: TEventTarget {
  url(self : Self) -> String = _
  ready_state(self : Self) -> UInt = _
  buffered_amount(self : Self) -> UInt64 = _
  onopen(self : Self) -> EventHandler = _
  set_onopen(self : Self, onopen : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
  extensions(self : Self) -> String = _
  protocol(self : Self) -> String = _
  close(self : Self, code? : UInt, reason? : String) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  binary_type(self : Self) -> BinaryType = _
  set_binary_type(self : Self, binary_type : BinaryType) -> Unit = _
  send(self : Self, data : &TWebSocketSendData) -> Unit = _
}

/// [WebSocket.url](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/url)
impl TWebSocket with url(self : Self) -> String {
  web_socket_url_ffi(TJsValue::to_js(self))
}

/// [WebSocket.readyState](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/readyState)
impl TWebSocket with ready_state(self : Self) -> UInt {
  web_socket_ready_state_ffi(TJsValue::to_js(self))
}

/// [WebSocket.bufferedAmount](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/bufferedAmount)
impl TWebSocket with buffered_amount(self : Self) -> UInt64 {
  web_socket_buffered_amount_ffi(TJsValue::to_js(self))
}

/// [WebSocket.onopen](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onopen)
impl TWebSocket with onopen(self : Self) -> EventHandler {
  web_socket_onopen_ffi(TJsValue::to_js(self))
}

/// [WebSocket.onopen](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onopen)
impl TWebSocket with set_onopen(self : Self, 
onopen : (Event) -> JsValue) -> Unit {
  web_socket_set_onopen_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onopen)))
}

/// [WebSocket.onerror](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onerror)
impl TWebSocket with onerror(self : Self) -> EventHandler {
  web_socket_onerror_ffi(TJsValue::to_js(self))
}

/// [WebSocket.onerror](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onerror)
impl TWebSocket with set_onerror(self : Self, 
onerror : (Event) -> JsValue) -> Unit {
  web_socket_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onerror)))
}

/// [WebSocket.onclose](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onclose)
impl TWebSocket with onclose(self : Self) -> EventHandler {
  web_socket_onclose_ffi(TJsValue::to_js(self))
}

/// [WebSocket.onclose](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onclose)
impl TWebSocket with set_onclose(self : Self, 
onclose : (Event) -> JsValue) -> Unit {
  web_socket_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onclose)))
}

/// [WebSocket.extensions](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/extensions)
impl TWebSocket with extensions(self : Self) -> String {
  web_socket_extensions_ffi(TJsValue::to_js(self))
}

/// [WebSocket.protocol](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/protocol)
impl TWebSocket with protocol(self : Self) -> String {
  web_socket_protocol_ffi(TJsValue::to_js(self))
}

/// [WebSocket.close](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/close)
impl TWebSocket with close(self : Self, 
code? : UInt, 
reason? : String) -> Unit {
  web_socket_close_ffi(TJsValue::to_js(self), opt_to_js(code), opt_to_js(reason))
}

/// [WebSocket.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onmessage)
impl TWebSocket with onmessage(self : Self) -> EventHandler {
  web_socket_onmessage_ffi(TJsValue::to_js(self))
}

/// [WebSocket.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onmessage)
impl TWebSocket with set_onmessage(self : Self, 
onmessage : (Event) -> JsValue) -> Unit {
  web_socket_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessage)))
}

/// [WebSocket.binaryType](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/binaryType)
impl TWebSocket with binary_type(self : Self) -> BinaryType {
  web_socket_binary_type_ffi(TJsValue::to_js(self))
}

/// [WebSocket.binaryType](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/binaryType)
impl TWebSocket with set_binary_type(self : Self, 
binary_type : BinaryType) -> Unit {
  web_socket_set_binary_type_ffi(TJsValue::to_js(self), TJsValue::to_js(binary_type))
}

/// [WebSocket.send](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/send)
impl TWebSocket with send(self : Self, 
data : &TWebSocketSendData) -> Unit {
  web_socket_send_ffi(TJsValue::to_js(self), data.to_js())
}

#cfg(target="js")
extern "js" fn web_socket_new_ffi(url: JsValue, protocols: JsValue) -> WebSocket = "(url, protocols) => new WebSocket(url, protocols)"

#cfg(target="js")
extern "js" fn web_socket_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn web_socket_url_ffi(obj: JsValue) -> String {
  web_socket_url_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_ready_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readyState"

///|
#cfg(target="js")
fn web_socket_ready_state_ffi(obj: JsValue) -> UInt {
  web_socket_ready_state_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_buffered_amount_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bufferedAmount"

///|
#cfg(target="js")
fn web_socket_buffered_amount_ffi(obj: JsValue) -> UInt64 {
  web_socket_buffered_amount_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_onopen_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onopen"

///|
#cfg(target="js")
fn web_socket_onopen_ffi(obj: JsValue) -> EventHandler {
  web_socket_onopen_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_set_onopen_ffi(obj: JsValue, onopen: JsValue) -> Unit = "(obj, onopen) => { obj.onopen = onopen; }"

#cfg(target="js")
extern "js" fn web_socket_onerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn web_socket_onerror_ffi(obj: JsValue) -> EventHandler {
  web_socket_onerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

#cfg(target="js")
extern "js" fn web_socket_onclose_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onclose"

///|
#cfg(target="js")
fn web_socket_onclose_ffi(obj: JsValue) -> EventHandler {
  web_socket_onclose_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

#cfg(target="js")
extern "js" fn web_socket_extensions_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.extensions"

///|
#cfg(target="js")
fn web_socket_extensions_ffi(obj: JsValue) -> String {
  web_socket_extensions_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_protocol_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
fn web_socket_protocol_ffi(obj: JsValue) -> String {
  web_socket_protocol_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_close_ffi(obj: JsValue, code: JsValue, reason: JsValue) -> Unit = "(obj, code, reason) => obj.close(code, reason)"

#cfg(target="js")
extern "js" fn web_socket_onmessage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn web_socket_onmessage_ffi(obj: JsValue) -> EventHandler {
  web_socket_onmessage_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn web_socket_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

#cfg(target="js")
extern "js" fn web_socket_binary_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.binaryType"

///|
#cfg(target="js")
fn web_socket_binary_type_ffi(obj: JsValue) -> BinaryType {
  BinaryType::from_unchecked(web_socket_binary_type_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn web_socket_set_binary_type_ffi(obj: JsValue, binary_type: JsValue) -> Unit = "(obj, binaryType) => { obj.binaryType = binaryType; }"

#cfg(target="js")
extern "js" fn web_socket_send_ffi(obj: JsValue, data: JsValue) -> Unit = "(obj, data) => obj.send(data)"

#cfg(target="wasm-gc")
fn web_socket_new_ffi(url: JsValue, protocols: JsValue) -> WebSocket = "webapi_WebSocket" "new"

#cfg(target="wasm-gc")
fn web_socket_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_url"

///|
#cfg(target="wasm-gc")
fn web_socket_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(web_socket_url_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn web_socket_ready_state_ffi(obj: JsValue) -> UInt = "webapi_WebSocket" "get_readyState"

#cfg(target="wasm-gc")
fn web_socket_buffered_amount_ffi(obj: JsValue) -> UInt64 = "webapi_WebSocket" "get_bufferedAmount"

#cfg(target="wasm-gc")
fn web_socket_onopen_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_onopen"

///|
#cfg(target="wasm-gc")
fn web_socket_onopen_ffi(obj: JsValue) -> EventHandler {
  web_socket_onopen_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn web_socket_set_onopen_ffi(obj: JsValue, onopen: JsValue) -> Unit = "webapi_WebSocket" "set_onopen"

#cfg(target="wasm-gc")
fn web_socket_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_onerror"

///|
#cfg(target="wasm-gc")
fn web_socket_onerror_ffi(obj: JsValue) -> EventHandler {
  web_socket_onerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn web_socket_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_WebSocket" "set_onerror"

#cfg(target="wasm-gc")
fn web_socket_onclose_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_onclose"

///|
#cfg(target="wasm-gc")
fn web_socket_onclose_ffi(obj: JsValue) -> EventHandler {
  web_socket_onclose_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn web_socket_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "webapi_WebSocket" "set_onclose"

#cfg(target="wasm-gc")
fn web_socket_extensions_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_extensions"

///|
#cfg(target="wasm-gc")
fn web_socket_extensions_ffi(obj: JsValue) -> String {
  jsvalue_to_string(web_socket_extensions_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn web_socket_protocol_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_protocol"

///|
#cfg(target="wasm-gc")
fn web_socket_protocol_ffi(obj: JsValue) -> String {
  jsvalue_to_string(web_socket_protocol_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn web_socket_close_ffi(obj: JsValue, code: JsValue, reason: JsValue) -> Unit = "webapi_WebSocket" "close"

#cfg(target="wasm-gc")
fn web_socket_onmessage_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn web_socket_onmessage_ffi(obj: JsValue) -> EventHandler {
  web_socket_onmessage_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn web_socket_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_WebSocket" "set_onmessage"

#cfg(target="wasm-gc")
fn web_socket_binary_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WebSocket" "get_binaryType"

///|
#cfg(target="wasm-gc")
fn web_socket_binary_type_ffi(obj: JsValue) -> BinaryType {
  BinaryType::from_unchecked(jsvalue_to_string(web_socket_binary_type_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn web_socket_set_binary_type_ffi(obj: JsValue, binary_type: JsValue) -> Unit = "webapi_WebSocket" "set_binaryType"

#cfg(target="wasm-gc")
fn web_socket_send_ffi(obj: JsValue, data: JsValue) -> Unit = "webapi_WebSocket" "send"