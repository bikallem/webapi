///|
extern "js" fn web_socket_new_ffi(
  url : JsValue,
  protocols : JsValue,
) -> WebSocket = "(url, protocols) => new WebSocket(url, protocols)"

///|
extern "js" fn web_socket_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
fn web_socket_url_ffi(obj : JsValue) -> String {
  web_socket_url_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
fn web_socket_ready_state_ffi(obj : JsValue) -> UInt {
  web_socket_ready_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_buffered_amount_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bufferedAmount"

///|
fn web_socket_buffered_amount_ffi(obj : JsValue) -> UInt64 {
  web_socket_buffered_amount_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_onopen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onopen"

///|
fn web_socket_onopen_ffi(obj : JsValue) -> EventHandler {
  web_socket_onopen_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_set_onopen_ffi(
  obj : JsValue,
  onopen : JsValue,
) -> Unit = "(obj, onopen) => { obj.onopen = onopen; }"

///|
extern "js" fn web_socket_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn web_socket_onerror_ffi(obj : JsValue) -> EventHandler {
  web_socket_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn web_socket_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
fn web_socket_onclose_ffi(obj : JsValue) -> EventHandler {
  web_socket_onclose_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn web_socket_extensions_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.extensions"

///|
fn web_socket_extensions_ffi(obj : JsValue) -> String {
  web_socket_extensions_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_protocol_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
fn web_socket_protocol_ffi(obj : JsValue) -> String {
  web_socket_protocol_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_close_ffi(
  obj : JsValue,
  code : JsValue,
  reason : JsValue,
) -> Unit = "(obj, code, reason) => obj.close(code, reason)"

///|
extern "js" fn web_socket_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
fn web_socket_onmessage_ffi(obj : JsValue) -> EventHandler {
  web_socket_onmessage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
extern "js" fn web_socket_binary_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.binaryType"

///|
fn web_socket_binary_type_ffi(obj : JsValue) -> BinaryType {
  web_socket_binary_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn web_socket_set_binary_type_ffi(
  obj : JsValue,
  binary_type : JsValue,
) -> Unit = "(obj, binaryType) => { obj.binaryType = binaryType; }"

///|
extern "js" fn web_socket_send_ffi(obj : JsValue, data : JsValue) -> Unit = "(obj, data) => obj.send(data)"
