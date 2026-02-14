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
pub impl FromJsAny for MessageEventInit with from_js_any(value : JsAny) -> MessageEventInit = "%identity"

///|
pub fn MessageEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  data? : JsValue,
  origin? : String,
  last_event_id? : String,
  source? : &TMessageEventSource,
  ports? : Array[MessagePort],
) -> MessageEventInit {
  message_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(data),
    opt_to_js(origin),
    opt_to_js(last_event_id),
    match source {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(ports),
  )
}

///|
pub fn MessageEventInit::empty() -> MessageEventInit {
  message_event_init_empty_ffi()
}

///|
pub fn MessageEventInit::bubbles(self : MessageEventInit) -> Bool? {
  let result = message_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MessageEventInit::cancelable(self : MessageEventInit) -> Bool? {
  let result = message_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MessageEventInit::composed(self : MessageEventInit) -> Bool? {
  let result = message_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MessageEventInit::data(self : MessageEventInit) -> JsValue? {
  let result = message_event_init_get_data_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn MessageEventInit::origin(self : MessageEventInit) -> String? {
  let result = message_event_init_get_origin_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MessageEventInit::last_event_id(self : MessageEventInit) -> String? {
  let result = message_event_init_get_last_event_id_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MessageEventInit::source(self : MessageEventInit) -> MessageEventSource? {
  let result = message_event_init_get_source_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn MessageEventInit::ports(self : MessageEventInit) -> Array[MessagePort]? {
  let result = message_event_init_get_ports_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
