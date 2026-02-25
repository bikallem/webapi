// Do not edit. This file is generated.
// MoonBit type: WebSocket
// Specifications: websockets.idl

///|
/// [WebSocket](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket)
#external
pub type WebSocket

///|
pub impl TJsValue for WebSocket with to_js(self : WebSocket) -> JsValue = "%identity"

///|
pub impl FromJsAny for WebSocket with from_js_any(value : JsAny) -> WebSocket = "%identity"

///|
pub fn[T : TWebSocket] WebSocket::into(self : WebSocket) -> T = "%identity"

///|
pub impl TWebSocket for WebSocket

///|
pub impl TEventTarget for WebSocket

///|
pub(open) trait TWebSocketNewProtocols {
  to_js(self : Self) -> JsValue
}

///|
pub impl TWebSocketNewProtocols for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TWebSocketNewProtocols for Array[String] with to_js(
  self : Array[String],
) -> JsValue = "%identity"

///|
pub fn WebSocket::new(
  url : String,
  protocols? : &TWebSocketNewProtocols,
) -> WebSocket {
  web_socket_new_ffi(
    TJsValue::to_js(url),
    match protocols {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub const WEB_SOCKET_CONNECTING : UInt = 0

///|
pub const WEB_SOCKET_OPEN : UInt = 1

///|
pub const WEB_SOCKET_CLOSING : UInt = 2

///|
pub const WEB_SOCKET_CLOSED : UInt = 3

///|
pub(open) trait TWebSocketSendData {
  to_js(self : Self) -> JsValue
}

///|
pub impl TWebSocketSendData for BufferSource with to_js(self : BufferSource) -> JsValue = "%identity"

///|
pub impl TWebSocketSendData for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TWebSocketSendData for String with to_js(self : String) -> JsValue = "%identity"

///|
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

///|
/// [WebSocket.url](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/url)
impl TWebSocket with url(self : Self) -> String {
  web_socket_url_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.readyState](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/readyState)
impl TWebSocket with ready_state(self : Self) -> UInt {
  web_socket_ready_state_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.bufferedAmount](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/bufferedAmount)
impl TWebSocket with buffered_amount(self : Self) -> UInt64 {
  web_socket_buffered_amount_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.onopen](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onopen)
impl TWebSocket with onopen(self : Self) -> EventHandler {
  web_socket_onopen_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.onopen](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onopen)
impl TWebSocket with set_onopen(self : Self, onopen : (Event) -> JsValue) -> Unit {
  web_socket_set_onopen_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onopen)),
  )
}

///|
/// [WebSocket.onerror](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onerror)
impl TWebSocket with onerror(self : Self) -> EventHandler {
  web_socket_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.onerror](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onerror)
impl TWebSocket with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  web_socket_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [WebSocket.onclose](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onclose)
impl TWebSocket with onclose(self : Self) -> EventHandler {
  web_socket_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.onclose](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onclose)
impl TWebSocket with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  web_socket_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [WebSocket.extensions](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/extensions)
impl TWebSocket with extensions(self : Self) -> String {
  web_socket_extensions_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.protocol](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/protocol)
impl TWebSocket with protocol(self : Self) -> String {
  web_socket_protocol_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.close](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/close)
impl TWebSocket with close(self : Self, code? : UInt, reason? : String) -> Unit {
  web_socket_close_ffi(
    TJsValue::to_js(self),
    opt_to_js(code),
    opt_to_js(reason),
  )
}

///|
/// [WebSocket.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onmessage)
impl TWebSocket with onmessage(self : Self) -> EventHandler {
  web_socket_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/onmessage)
impl TWebSocket with set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit {
  web_socket_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [WebSocket.binaryType](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/binaryType)
impl TWebSocket with binary_type(self : Self) -> BinaryType {
  web_socket_binary_type_ffi(TJsValue::to_js(self))
}

///|
/// [WebSocket.binaryType](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/binaryType)
impl TWebSocket with set_binary_type(self : Self, binary_type : BinaryType) -> Unit {
  web_socket_set_binary_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(binary_type),
  )
}

///|
/// [WebSocket.send](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/send)
impl TWebSocket with send(self : Self, data : &TWebSocketSendData) -> Unit {
  web_socket_send_ffi(TJsValue::to_js(self), data.to_js())
}
