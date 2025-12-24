///|
#external
pub type MessagePort

///|
pub impl TJsValue for MessagePort with to_js(self : MessagePort) -> JsValue = "%identity"

///|
pub fn[T : TMessagePort] MessagePort::into(self : MessagePort) -> T = "%identity"

///|
pub impl TMessagePort for MessagePort

///|
pub impl TEventTarget for MessagePort

///|
pub trait TMessagePort: TEventTarget {
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_2(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
  start(self : Self) -> Unit = _
  close(self : Self) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit = _
}

///|
extern "js" fn message_port_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(obj, message, transfer)"

///|
impl TMessagePort with post_message(
  self : Self,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit {
  message_port_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(transfer),
  )
}

///|
extern "js" fn message_port_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage_2(obj, message, options)"

///|
impl TMessagePort with post_message_2(
  self : Self,
  message : JsValue,
  options? : StructuredSerializeOptions = StructuredSerializeOptions::empty(),
) -> Unit {
  message_port_post_message_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn message_port_start_ffi(obj : JsValue) -> Unit = "(obj) => obj.start(obj)"

///|
impl TMessagePort with start(self : Self) -> Unit {
  message_port_start_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn message_port_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TMessagePort with close(self : Self) -> Unit {
  message_port_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn message_port_onclose_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclose"

///|
impl TMessagePort with onclose(self : Self) -> EventHandler {
  message_port_onclose_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn message_port_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
impl TMessagePort with set_onclose(self : Self, onclose : EventHandler) -> Unit {
  message_port_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

///|
extern "js" fn message_port_onmessage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessage"

///|
impl TMessagePort with onmessage(self : Self) -> EventHandler {
  message_port_onmessage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn message_port_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
impl TMessagePort with set_onmessage(self : Self, onmessage : EventHandler) -> Unit {
  message_port_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
extern "js" fn message_port_onmessageerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessageerror"

///|
impl TMessagePort with onmessageerror(self : Self) -> EventHandler {
  message_port_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn message_port_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
impl TMessagePort with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandler,
) -> Unit {
  message_port_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}
