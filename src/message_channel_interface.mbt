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
pub trait TMessageChannel: TJsValue {}
