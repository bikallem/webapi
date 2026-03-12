// Do not edit. This file is generated.
// MoonBit type: Client
// Specifications: service-workers.idl

/// [Client](https://developer.mozilla.org/en-US/docs/Web/API/Client)
#external
pub type Client

pub impl TJsValue for Client with to_js(self: Client) -> JsValue = "%identity"

pub impl FromJsAny for Client with from_js_any(value : JsAny) -> Client = "%identity"

pub fn[T: TClient] Client::into(self : Client) -> T = "%identity"

pub impl TClient for Client

/// [Client](https://developer.mozilla.org/en-US/docs/Web/API/Client) interface.
pub trait TClient: TJsValue {
  url(self : Self) -> String = _
  frame_type(self : Self) -> FrameType = _
  id(self : Self) -> String = _
  type_(self : Self) -> ClientType = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(self : Self, message : JsValue, options? : StructuredSerializeOptions) -> Unit = _
}

/// [Client.url](https://developer.mozilla.org/en-US/docs/Web/API/Client/url)
impl TClient with url(self : Self) -> String {
  client_url_ffi(TJsValue::to_js(self))
}

/// [Client.frameType](https://developer.mozilla.org/en-US/docs/Web/API/Client/frameType)
impl TClient with frame_type(self : Self) -> FrameType {
  client_frame_type_ffi(TJsValue::to_js(self))
}

/// [Client.id](https://developer.mozilla.org/en-US/docs/Web/API/Client/id)
impl TClient with id(self : Self) -> String {
  client_id_ffi(TJsValue::to_js(self))
}

/// [Client.type](https://developer.mozilla.org/en-US/docs/Web/API/Client/type)
impl TClient with type_(self : Self) -> ClientType {
  client_type_ffi(TJsValue::to_js(self))
}

/// [Client.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Client/postMessage)
impl TClient with post_message(self : Self, 
message : JsValue, 
transfer : Array[JsValue]) -> Unit {
  client_post_message_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(transfer))
}

/// [Client.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Client/postMessage)
impl TClient with post_message_with_options(self : Self, 
message : JsValue, 
options? : StructuredSerializeOptions) -> Unit {
  client_post_message_with_options_ffi(TJsValue::to_js(self), TJsValue::to_js(message), opt_to_js(options))
}