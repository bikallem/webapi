///|
#external
pub type MessageChannel

///|
pub impl TJsValue for MessageChannel with to_js(self : MessageChannel) -> JsValue = "%identity"

///|
pub fn[T : TMessageChannel] MessageChannel::into(self : MessageChannel) -> T = "%identity"

///|
pub impl TMessageChannel for MessageChannel

///|
extern "js" fn message_channel_new_ffi() -> MessageChannel = "() => new MessageChannel()"

///|
pub fn MessageChannel::new() -> MessageChannel {
  message_channel_new_ffi()
}

///|
pub trait TMessageChannel: TJsValue {
  port1(self : Self) -> MessagePort = _
  port2(self : Self) -> MessagePort = _
}

///|
extern "js" fn message_channel_port1_ffi(obj : JsValue) -> MessagePort = "(obj) => obj.port1"

///|
impl TMessageChannel with port1(self : Self) -> MessagePort {
  message_channel_port1_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn message_channel_port2_ffi(obj : JsValue) -> MessagePort = "(obj) => obj.port2"

///|
impl TMessageChannel with port2(self : Self) -> MessagePort {
  message_channel_port2_ffi(TJsValue::to_js(self))
}
