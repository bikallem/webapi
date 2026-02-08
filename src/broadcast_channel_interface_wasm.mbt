fn broadcast_channel_new_ffi(name: JsValue) -> BroadcastChannel = "webapi_BroadcastChannel" "new"

fn broadcast_channel_name_ffi(obj: JsValue) -> JsValue = "webapi_BroadcastChannel" "get_name"

fn broadcast_channel_post_message_ffi(obj: JsValue, message: JsValue) -> Unit = "webapi_BroadcastChannel" "postMessage"

fn broadcast_channel_close_ffi(obj: JsValue) -> Unit = "webapi_BroadcastChannel" "close"

fn broadcast_channel_onmessage_ffi(obj: JsValue) -> JsValue = "webapi_BroadcastChannel" "get_onmessage"

fn broadcast_channel_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_BroadcastChannel" "set_onmessage"

fn broadcast_channel_onmessageerror_ffi(obj: JsValue) -> JsValue = "webapi_BroadcastChannel" "get_onmessageerror"

fn broadcast_channel_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "webapi_BroadcastChannel" "set_onmessageerror"