// Do not edit. This file is generated.
// MoonBit type: Client
// Specifications: service-workers.idl

///|
/// [Client](https://developer.mozilla.org/en-US/docs/Web/API/Client)
#external
pub type Client

///|
pub impl TJsValue for Client with to_js(self : Client) -> JsValue = "%identity"

///|
pub impl FromJsAny for Client with from_js_any(value : JsAny) -> Client = "%identity"

///|
pub fn[T : TClient] Client::into(self : Client) -> T = "%identity"

///|
pub impl TClient for Client

///|
/// [Client](https://developer.mozilla.org/en-US/docs/Web/API/Client) interface.
pub trait TClient: TJsValue {
  url(self : Self) -> String = _
  frame_type(self : Self) -> FrameType = _
  id(self : Self) -> String = _
  type_(self : Self) -> ClientType = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
}

///|
/// [Client.url](https://developer.mozilla.org/en-US/docs/Web/API/Client/url)
impl TClient with url(self : Self) -> String {
  client_url_ffi(TJsValue::to_js(self))
}

///|
/// [Client.frameType](https://developer.mozilla.org/en-US/docs/Web/API/Client/frameType)
impl TClient with frame_type(self : Self) -> FrameType {
  client_frame_type_ffi(TJsValue::to_js(self))
}

///|
/// [Client.id](https://developer.mozilla.org/en-US/docs/Web/API/Client/id)
impl TClient with id(self : Self) -> String {
  client_id_ffi(TJsValue::to_js(self))
}

///|
/// [Client.type](https://developer.mozilla.org/en-US/docs/Web/API/Client/type)
impl TClient with type_(self : Self) -> ClientType {
  client_type_ffi(TJsValue::to_js(self))
}

///|
/// [Client.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Client/postMessage)
impl TClient with post_message(
  self : Self,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit {
  client_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(transfer),
  )
}

///|
/// [Client.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Client/postMessage)
impl TClient with post_message_with_options(
  self : Self,
  message : JsValue,
  options? : StructuredSerializeOptions,
) -> Unit {
  client_post_message_with_options_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    opt_to_js(options),
  )
}

///|
#cfg(target="js")
extern "js" fn client_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn client_url_ffi(obj : JsValue) -> String {
  client_url_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn client_frame_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.frameType"

///|
#cfg(target="js")
fn client_frame_type_ffi(obj : JsValue) -> FrameType {
  FrameType::from_unchecked(client_frame_type_ffi_js(obj).unsafe_cast())
}

///|
#cfg(target="js")
extern "js" fn client_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn client_id_ffi(obj : JsValue) -> String {
  client_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn client_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn client_type_ffi(obj : JsValue) -> ClientType {
  ClientType::from_unchecked(client_type_ffi_js(obj).unsafe_cast())
}

///|
#cfg(target="js")
extern "js" fn client_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

///|
#cfg(target="js")
extern "js" fn client_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

///|
#cfg(target="wasm-gc")
fn client_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_url"

///|
#cfg(target="wasm-gc")
fn client_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(client_url_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn client_frame_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_frameType"

///|
#cfg(target="wasm-gc")
fn client_frame_type_ffi(obj : JsValue) -> FrameType {
  FrameType::from_unchecked(jsvalue_to_string(client_frame_type_ffi_wasm(obj)))
}

///|
#cfg(target="wasm-gc")
fn client_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_id"

///|
#cfg(target="wasm-gc")
fn client_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(client_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn client_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Client" "get_type"

///|
#cfg(target="wasm-gc")
fn client_type_ffi(obj : JsValue) -> ClientType {
  ClientType::from_unchecked(jsvalue_to_string(client_type_ffi_wasm(obj)))
}

///|
#cfg(target="wasm-gc")
fn client_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_Client" "postMessage"

///|
#cfg(target="wasm-gc")
fn client_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_Client" "post_message_with_options"
