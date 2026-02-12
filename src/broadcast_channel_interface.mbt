// Do not edit. This file is generated.
// MoonBit type: BroadcastChannel
// Specifications: html.idl

///|
/// [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel)
#external
pub type BroadcastChannel

///|
pub impl TJsValue for BroadcastChannel with to_js(self : BroadcastChannel) -> JsValue = "%identity"

///|
pub fn[T : TBroadcastChannel] BroadcastChannel::into(
  self : BroadcastChannel,
) -> T = "%identity"

///|
pub impl TBroadcastChannel for BroadcastChannel

///|
pub impl TEventTarget for BroadcastChannel

///|
pub fn BroadcastChannel::new(name : String) -> BroadcastChannel {
  broadcast_channel_new_ffi(TJsValue::to_js(name))
}

///|
/// [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel) interface.
pub trait TBroadcastChannel: TEventTarget {
  name(self : Self) -> String = _
  post_message(self : Self, message : JsValue) -> Unit = _
  close(self : Self) -> Unit = _
  onmessage(self : Self) -> EventHandlerNonNull = _
  set_onmessage(self : Self, onmessage : EventHandlerNonNull) -> Unit = _
  onmessageerror(self : Self) -> EventHandlerNonNull = _
  set_onmessageerror(self : Self, onmessageerror : EventHandlerNonNull) -> Unit = _
}

///|
/// [BroadcastChannel.name](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/name)
impl TBroadcastChannel with name(self : Self) -> String {
  broadcast_channel_name_ffi(TJsValue::to_js(self))
}

///|
/// [BroadcastChannel.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/postMessage)
impl TBroadcastChannel with post_message(self : Self, message : JsValue) -> Unit {
  broadcast_channel_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
  )
}

///|
/// [BroadcastChannel.close](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/close)
impl TBroadcastChannel with close(self : Self) -> Unit {
  broadcast_channel_close_ffi(TJsValue::to_js(self))
}

///|
/// [BroadcastChannel.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessage)
impl TBroadcastChannel with onmessage(self : Self) -> EventHandlerNonNull {
  broadcast_channel_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [BroadcastChannel.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessage)
impl TBroadcastChannel with set_onmessage(
  self : Self,
  onmessage : EventHandlerNonNull,
) -> Unit {
  broadcast_channel_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
/// [BroadcastChannel.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessageerror)
impl TBroadcastChannel with onmessageerror(self : Self) -> EventHandlerNonNull {
  broadcast_channel_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [BroadcastChannel.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessageerror)
impl TBroadcastChannel with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandlerNonNull,
) -> Unit {
  broadcast_channel_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}
