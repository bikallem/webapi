///|
fn client_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_url"

///|
fn client_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(client_url_ffi_wasm(obj))
}

///|
fn client_frame_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_frameType"

///|
fn client_frame_type_ffi(obj : JsValue) -> FrameType {
  FrameType::from_unchecked(jsvalue_to_string(client_frame_type_ffi_wasm(obj)))
}

///|
fn client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_id"

///|
fn client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(client_id_ffi_wasm(obj))
}

///|
fn client_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_type"

///|
fn client_type_ffi(obj : JsValue) -> ClientType {
  ClientType::from_unchecked(jsvalue_to_string(client_type_ffi_wasm(obj)))
}

///|
fn client_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_Client" "postMessage"

///|
fn client_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_Client" "post_message_with_options"
