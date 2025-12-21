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
extern "js" fn broadcast_channel_ffi(name : JsValue) -> BroadcastChannel = "(name) => new BroadcastChannel(name)"

///|
pub fn BroadcastChannel::new(name : String) -> BroadcastChannel {
  broadcast_channel_ffi(TJsValue::to_js(name))
}

///|
pub trait TBroadcastChannel: TEventTarget {
  post_message(self : Self, message : JsValue) -> Unit = _
  close(self : Self) -> Unit = _
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
