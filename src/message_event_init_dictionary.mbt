// Do not edit. This file is generated.
// MoonBit type: MessageEventInit
// Specifications: html.idl, dom.idl

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
  message_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MessageEventInit::cancelable(self : MessageEventInit) -> Bool? {
  message_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MessageEventInit::composed(self : MessageEventInit) -> Bool? {
  message_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MessageEventInit::data(self : MessageEventInit) -> JsValue? {
  message_event_init_get_data_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn MessageEventInit::origin(self : MessageEventInit) -> String? {
  message_event_init_get_origin_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MessageEventInit::last_event_id(self : MessageEventInit) -> String? {
  message_event_init_get_last_event_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MessageEventInit::source(self : MessageEventInit) -> MessageEventSource? {
  message_event_init_get_source_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn MessageEventInit::ports(self : MessageEventInit) -> Array[MessagePort]? {
  message_event_init_get_ports_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn message_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> MessageEventInit =
  #|(bubbles, cancelable, composed, data, origin, lastEventId, source, ports) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (data !== undefined) obj.data = data;
  #|  if (origin !== undefined) obj.origin = origin;
  #|  if (lastEventId !== undefined) obj.lastEventId = lastEventId;
  #|  if (source !== undefined) obj.source = source;
  #|  if (ports !== undefined) obj.ports = ports;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn message_event_init_empty_ffi() -> MessageEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_last_event_id_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lastEventId"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
extern "js" fn message_event_init_get_ports_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ports"

///|
#cfg(target="wasm-gc")
fn message_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> MessageEventInit = "webapi_MessageEventInit" "new"

///|
#cfg(target="wasm-gc")
fn message_event_init_empty_ffi() -> MessageEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_data_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_data"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_origin_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_origin"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_last_event_id_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_lastEventId"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_source_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_source"

///|
#cfg(target="wasm-gc")
fn message_event_init_get_ports_ffi(obj : JsValue) -> JsValue = "webapi_MessageEventInit" "get_ports"
