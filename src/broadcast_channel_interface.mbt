// Do not edit. This file is generated.
// MoonBit type: BroadcastChannel
// Specifications: html.idl

///|
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
extern "js" fn broadcast_channel_new_ffi(name : JsValue) -> BroadcastChannel = "(name) => new BroadcastChannel(name)"

///|
pub fn BroadcastChannel::new(name : String) -> BroadcastChannel {
  broadcast_channel_new_ffi(TJsValue::to_js(name))
}

///|
pub trait TBroadcastChannel: TEventTarget {
  name(self : Self) -> String = _
  post_message(self : Self, message : JsValue) -> Unit = _
  close(self : Self) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit = _
}

///|
extern "js" fn broadcast_channel_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TBroadcastChannel with name(self : Self) -> String {
  broadcast_channel_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn broadcast_channel_post_message_ffi(
  obj : JsValue,
  message : JsValue,
) -> Unit = "(obj, message) => obj.postMessage(obj, message)"

///|
impl TBroadcastChannel with post_message(self : Self, message : JsValue) -> Unit {
  broadcast_channel_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
  )
}

///|
extern "js" fn broadcast_channel_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TBroadcastChannel with close(self : Self) -> Unit {
  broadcast_channel_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn broadcast_channel_onmessage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessage"

///|
impl TBroadcastChannel with onmessage(self : Self) -> EventHandler {
  broadcast_channel_onmessage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn broadcast_channel_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
impl TBroadcastChannel with set_onmessage(self : Self, onmessage : EventHandler) -> Unit {
  broadcast_channel_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
extern "js" fn broadcast_channel_onmessageerror_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onmessageerror"

///|
impl TBroadcastChannel with onmessageerror(self : Self) -> EventHandler {
  broadcast_channel_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn broadcast_channel_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
impl TBroadcastChannel with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandler,
) -> Unit {
  broadcast_channel_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}
