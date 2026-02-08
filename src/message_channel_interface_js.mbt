extern "js" fn message_channel_new_ffi() -> MessageChannel = "() => new MessageChannel()"

extern "js" fn message_channel_port1_ffi(obj: JsValue) -> JsValue = "(obj) => obj.port1"

extern "js" fn message_channel_port2_ffi(obj: JsValue) -> JsValue = "(obj) => obj.port2"