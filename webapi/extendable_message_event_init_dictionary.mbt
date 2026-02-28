// Do not edit. This file is generated.
// MoonBit type: ExtendableMessageEventInit
// Specifications: service-workers.idl, dom.idl

///|
/// [ExtendableMessageEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEventInit)
#external
pub type ExtendableMessageEventInit

///|
pub impl TJsValue for ExtendableMessageEventInit with to_js(
  self : ExtendableMessageEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ExtendableMessageEventInit with from_js_any(
  value : JsAny,
) -> ExtendableMessageEventInit = "%identity"

///|
pub(open) trait TExtendableMessageEventInitNewSource {
  to_js(self : Self) -> JsValue
}

///|
pub impl TExtendableMessageEventInitNewSource for Client with to_js(
  self : Client,
) -> JsValue = "%identity"

///|
pub impl TExtendableMessageEventInitNewSource for ServiceWorker with to_js(
  self : ServiceWorker,
) -> JsValue = "%identity"

///|
pub impl TExtendableMessageEventInitNewSource for MessagePort with to_js(
  self : MessagePort,
) -> JsValue = "%identity"

///|
pub fn ExtendableMessageEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  data? : JsValue,
  origin? : String = "",
  last_event_id? : String = "",
  source? : &TExtendableMessageEventInitNewSource,
  ports? : Array[MessagePort] = [],
) -> ExtendableMessageEventInit {
  extendable_message_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(data),
    TJsValue::to_js(origin),
    TJsValue::to_js(last_event_id),
    match source {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    TJsValue::to_js(ports),
  )
}

///|
pub fn ExtendableMessageEventInit::empty() -> ExtendableMessageEventInit {
  extendable_message_event_init_empty_ffi()
}

///|
pub(open) trait TExtendableMessageEventInitGetSource {
  to_js(self : Self) -> JsValue
}

///|
pub impl TExtendableMessageEventInitGetSource for Client with to_js(
  self : Client,
) -> JsValue = "%identity"

///|
pub impl TExtendableMessageEventInitGetSource for ServiceWorker with to_js(
  self : ServiceWorker,
) -> JsValue = "%identity"

///|
pub impl TExtendableMessageEventInitGetSource for MessagePort with to_js(
  self : MessagePort,
) -> JsValue = "%identity"

///|
#external
pub type ExtendableMessageEventInitGetSource

///|
pub impl TJsValue for ExtendableMessageEventInitGetSource with to_js(
  self : ExtendableMessageEventInitGetSource,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ExtendableMessageEventInitGetSource with from_js_any(
  value : JsAny,
) -> ExtendableMessageEventInitGetSource = "%identity"

///|
pub fn[T : TExtendableMessageEventInitGetSource + FromJsAny] ExtendableMessageEventInitGetSource::into(
  self : ExtendableMessageEventInitGetSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TExtendableMessageEventInitGetSource] ExtendableMessageEventInitGetSource::from(
  value : T,
) -> ExtendableMessageEventInitGetSource = "%identity"

///|
pub impl TExtendableMessageEventInitGetSource for ExtendableMessageEventInitGetSource with to_js(
  self : ExtendableMessageEventInitGetSource,
) -> JsValue = "%identity"

///|
pub fn ExtendableMessageEventInit::bubbles(
  self : ExtendableMessageEventInit,
) -> Bool? {
  extendable_message_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ExtendableMessageEventInit::cancelable(
  self : ExtendableMessageEventInit,
) -> Bool? {
  extendable_message_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ExtendableMessageEventInit::composed(
  self : ExtendableMessageEventInit,
) -> Bool? {
  extendable_message_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ExtendableMessageEventInit::data(
  self : ExtendableMessageEventInit,
) -> JsValue? {
  extendable_message_event_init_get_data_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn ExtendableMessageEventInit::origin(
  self : ExtendableMessageEventInit,
) -> String? {
  extendable_message_event_init_get_origin_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ExtendableMessageEventInit::last_event_id(
  self : ExtendableMessageEventInit,
) -> String? {
  extendable_message_event_init_get_last_event_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ExtendableMessageEventInit::source(
  self : ExtendableMessageEventInit,
) -> ExtendableMessageEventInitGetSource? {
  extendable_message_event_init_get_source_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn ExtendableMessageEventInit::ports(
  self : ExtendableMessageEventInit,
) -> Array[MessagePort]? {
  extendable_message_event_init_get_ports_ffi(TJsValue::to_js(self)).to_option()
}
