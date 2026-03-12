extern "js" fn message_channel_new_ffi() -> MessageChannel = "() => new MessageChannel()"

extern "js" fn message_channel_port1_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port1"

///|
fn message_channel_port1_ffi(obj: JsValue) -> MessagePort {
  message_channel_port1_ffi_js(obj).unsafe_cast()
}

extern "js" fn message_channel_port2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port2"

///|
fn message_channel_port2_ffi(obj: JsValue) -> MessagePort {
  message_channel_port2_ffi_js(obj).unsafe_cast()
}