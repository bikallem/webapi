// Do not edit. This file is generated.
// MoonBit type: MessageChannel
// Specifications: html.idl

///|
/// [MessageChannel](https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel)
#external
pub type MessageChannel

///|
pub impl TJsValue for MessageChannel with to_js(self : MessageChannel) -> JsValue = "%identity"

///|
pub impl FromJsAny for MessageChannel with from_js_any(value : JsAny) -> MessageChannel = "%identity"

///|
pub fn[T : TMessageChannel] MessageChannel::into(self : MessageChannel) -> T = "%identity"

///|
pub impl TMessageChannel for MessageChannel

///|
pub fn MessageChannel::new() -> MessageChannel {
  message_channel_new_ffi()
}

///|
/// [MessageChannel](https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel) interface.
pub trait TMessageChannel: TJsValue {
  port1(self : Self) -> MessagePort = _
  port2(self : Self) -> MessagePort = _
}

///|
/// [MessageChannel.port1](https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel/port1)
impl TMessageChannel with port1(self : Self) -> MessagePort {
  message_channel_port1_ffi(TJsValue::to_js(self))
}

///|
/// [MessageChannel.port2](https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel/port2)
impl TMessageChannel with port2(self : Self) -> MessagePort {
  message_channel_port2_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn message_channel_new_ffi() -> MessageChannel = "() => new MessageChannel()"

///|
#cfg(target="js")
extern "js" fn message_channel_port1_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port1"

///|
#cfg(target="js")
fn message_channel_port1_ffi(obj : JsValue) -> MessagePort {
  message_channel_port1_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn message_channel_port2_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port2"

///|
#cfg(target="js")
fn message_channel_port2_ffi(obj : JsValue) -> MessagePort {
  message_channel_port2_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn message_channel_new_ffi() -> MessageChannel = "webapi_MessageChannel" "new"

///|
#cfg(target="wasm-gc")
fn message_channel_port1_ffi(obj : JsValue) -> MessagePort = "webapi_MessageChannel" "get_port1"

///|
#cfg(target="wasm-gc")
fn message_channel_port2_ffi(obj : JsValue) -> MessagePort = "webapi_MessageChannel" "get_port2"
