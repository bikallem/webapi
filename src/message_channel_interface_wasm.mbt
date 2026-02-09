///|
fn message_channel_new_ffi() -> MessageChannel = "webapi_MessageChannel" "new"

///|
fn message_channel_port1_ffi(obj : JsValue) -> MessagePort = "webapi_MessageChannel" "get_port1"

///|
fn message_channel_port2_ffi(obj : JsValue) -> MessagePort = "webapi_MessageChannel" "get_port2"
