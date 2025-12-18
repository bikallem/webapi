// Auto-generated MoonBit bindings for MessageEventInit dictionary

// Do not edit manually

///|
#external
pub type MessageEventInit

///|
pub impl TJsValue for MessageEventInit with to_js(self : MessageEventInit) -> JsValue = "%identity"

///|
fn message_event_init_ffi(
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> MessageEventInit = "webapi_MessageEventInit" "new"

///|
pub fn MessageEventInit::new(
  data? : JsValue,
  origin? : String = "",
  last_event_id? : String = "",
  source? : JsValue,
  ports? : Array[JsValue] = [],
) -> MessageEventInit {
  let data_js = opt_to_js(data)
  let source_js = opt_to_js(source)
  message_event_init_ffi(
    data_js,
    TJsValue::to_js(origin),
    TJsValue::to_js(last_event_id),
    source_js,
    TJsValue::to_js(ports),
  )
}

///|
pub fn MessageEventInit::empty() -> MessageEventInit = "webapi_Dictionary" "empty"
