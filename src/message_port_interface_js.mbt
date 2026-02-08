extern "js" fn message_port_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

extern "js" fn message_port_post_message_2_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "(obj, message, options) => obj.postMessage_2(message, options)"

extern "js" fn message_port_start_ffi(obj: JsValue) -> Unit = "(obj) => obj.start()"

extern "js" fn message_port_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

extern "js" fn message_port_onclose_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onclose"

extern "js" fn message_port_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

extern "js" fn message_port_onmessage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

extern "js" fn message_port_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

extern "js" fn message_port_onmessageerror_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

extern "js" fn message_port_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"