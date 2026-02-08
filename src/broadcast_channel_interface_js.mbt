extern "js" fn broadcast_channel_new_ffi(name: JsValue) -> BroadcastChannel = "(name) => new BroadcastChannel(name)"

extern "js" fn broadcast_channel_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn broadcast_channel_post_message_ffi(obj: JsValue, message: JsValue) -> Unit = "(obj, message) => obj.postMessage(message)"

extern "js" fn broadcast_channel_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

extern "js" fn broadcast_channel_onmessage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

extern "js" fn broadcast_channel_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

extern "js" fn broadcast_channel_onmessageerror_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

extern "js" fn broadcast_channel_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"