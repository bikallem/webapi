// Do not edit. This file is generated.
// MoonBit type: MessageEventInit
// Specifications: dom.idl, html.idl

///|
/// [MessageEventInit](https://developer.mozilla.org/en-US/docs/Web/API/MessageEventInit)
#external
pub type MessageEventInit

///|
pub impl TJsValue for MessageEventInit with to_js(self : MessageEventInit) -> JsValue = "%identity"

///|
pub fn MessageEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  data? : JsValue = JsValue::null(),
  origin? : String = "",
  last_event_id? : String = "",
  source? : MessageEventSource = JsValue::null(),
  ports? : Array[MessagePort] = [],
) -> MessageEventInit {
  message_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(data),
    TJsValue::to_js(origin),
    TJsValue::to_js(last_event_id),
    TJsValue::to_js(source),
    TJsValue::to_js(ports),
  )
}

///|
pub fn MessageEventInit::empty() -> MessageEventInit {
  message_event_init_empty_ffi()
}
