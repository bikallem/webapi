// Auto-generated MoonBit bindings for MessageEventInit dictionary
// Do not edit manually

#external
pub type MessageEventInit

pub impl TJsValue for MessageEventInit with to_js(self: MessageEventInit) -> JsValue = "%identity"


fn message_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, data : JsValue, origin : JsValue, last_event_id : JsValue, source : JsValue, ports : JsValue) -> MessageEventInit = "webapi_MessageEventInit" "new"


pub fn MessageEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  data? : JsValue? : JsValue = JsValue::null(),
  origin? : String? : String = "",
  last_event_id? : String? : String = "",
  source? : MessageEventSource? : MessageEventSource = MessageEventSource::null(),
  ports? : Array[MessagePort]? : Array[MessagePort] = []) -> MessageEventInit {
    message_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(data)
     ,TJsValue::to_js(origin)
     ,TJsValue::to_js(last_event_id)
     ,TJsValue::to_js(source)
     ,TJsValue::to_js(ports)
    )
}


pub fn MessageEventInit::empty() -> MessageEventInit = "webapi_Dictionary" "empty"