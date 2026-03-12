extern "js" fn client_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
fn client_url_ffi(obj: JsValue) -> String {
  client_url_ffi_js(obj).unsafe_cast()
}

extern "js" fn client_frame_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.frameType"

///|
fn client_frame_type_ffi(obj: JsValue) -> FrameType {
  FrameType::from_unchecked(client_frame_type_ffi_js(obj).unsafe_cast())
}

extern "js" fn client_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.id"

///|
fn client_id_ffi(obj: JsValue) -> String {
  client_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn client_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn client_type_ffi(obj: JsValue) -> ClientType {
  ClientType::from_unchecked(client_type_ffi_js(obj).unsafe_cast())
}

extern "js" fn client_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

extern "js" fn client_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"