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
