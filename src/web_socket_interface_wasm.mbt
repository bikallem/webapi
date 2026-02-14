///|
fn web_socket_new_ffi(url : JsValue, protocols : JsValue) -> WebSocket = "webapi_WebSocket" "new"

///|
fn web_socket_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_url"

///|
fn web_socket_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(web_socket_url_ffi_wasm(obj))
}

///|
fn web_socket_ready_state_ffi(obj : JsValue) -> UInt = "webapi_WebSocket" "get_readyState"

///|
fn web_socket_buffered_amount_ffi(obj : JsValue) -> UInt64 = "webapi_WebSocket" "get_bufferedAmount"

///|
fn web_socket_onopen_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_onopen"

///|
fn web_socket_onopen_ffi(obj : JsValue) -> EventHandler {
  web_socket_onopen_ffi_wasm(obj).unsafe_cast()
}

///|
fn web_socket_set_onopen_ffi(obj : JsValue, onopen : JsValue) -> Unit = "webapi_WebSocket" "set_onopen"

///|
fn web_socket_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_onerror"

///|
fn web_socket_onerror_ffi(obj : JsValue) -> EventHandler {
  web_socket_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
fn web_socket_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_WebSocket" "set_onerror"

///|
fn web_socket_onclose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_onclose"

///|
fn web_socket_onclose_ffi(obj : JsValue) -> EventHandler {
  web_socket_onclose_ffi_wasm(obj).unsafe_cast()
}

///|
fn web_socket_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_WebSocket" "set_onclose"

///|
fn web_socket_extensions_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_extensions"

///|
fn web_socket_extensions_ffi(obj : JsValue) -> String {
  jsvalue_to_string(web_socket_extensions_ffi_wasm(obj))
}

///|
fn web_socket_protocol_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_protocol"

///|
fn web_socket_protocol_ffi(obj : JsValue) -> String {
  jsvalue_to_string(web_socket_protocol_ffi_wasm(obj))
}

///|
fn web_socket_close_ffi(
  obj : JsValue,
  code : JsValue,
  reason : JsValue,
) -> Unit = "webapi_WebSocket" "close"

///|
fn web_socket_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_onmessage"

///|
fn web_socket_onmessage_ffi(obj : JsValue) -> EventHandler {
  web_socket_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
fn web_socket_set_onmessage_ffi(obj : JsValue, onmessage : JsValue) -> Unit = "webapi_WebSocket" "set_onmessage"

///|
fn web_socket_binary_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WebSocket" "get_binaryType"

///|
fn web_socket_binary_type_ffi(obj : JsValue) -> BinaryType {
  BinaryType::from_unchecked(
    jsvalue_to_string(web_socket_binary_type_ffi_wasm(obj)),
  )
}

///|
fn web_socket_set_binary_type_ffi(obj : JsValue, binary_type : JsValue) -> Unit = "webapi_WebSocket" "set_binaryType"

///|
fn web_socket_send_ffi(obj : JsValue, data : JsValue) -> Unit = "webapi_WebSocket" "send"
