///|
fn message_port_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_MessagePort" "postMessage"

///|
fn message_port_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_MessagePort" "postMessage_2"

///|
fn message_port_start_ffi(obj : JsValue) -> Unit = "webapi_MessagePort" "start"

///|
fn message_port_close_ffi(obj : JsValue) -> Unit = "webapi_MessagePort" "close"

///|
fn message_port_onclose_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_MessagePort" "get_onclose"

///|
fn message_port_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_MessagePort" "set_onclose"

///|
fn message_port_onmessage_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_MessagePort" "get_onmessage"

///|
fn message_port_set_onmessage_ffi(obj : JsValue, onmessage : JsValue) -> Unit = "webapi_MessagePort" "set_onmessage"

///|
fn message_port_onmessageerror_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_MessagePort" "get_onmessageerror"

///|
fn message_port_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_MessagePort" "set_onmessageerror"
