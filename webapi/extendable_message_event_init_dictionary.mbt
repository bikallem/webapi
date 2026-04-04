// Do not edit. This file is generated.
// MoonBit type: ExtendableMessageEventInit
// Specifications: dom.idl, service-workers.idl

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
pub(open) trait TExtendableMessageEventInitNewSource: TJsValue {}

///|
pub impl TExtendableMessageEventInitNewSource for Client

///|
pub impl TExtendableMessageEventInitNewSource for ServiceWorker

///|
pub impl TExtendableMessageEventInitNewSource for MessagePort

///|
pub fn ExtendableMessageEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  data? : JsValue,
  origin? : String,
  last_event_id? : String,
  source? : &TExtendableMessageEventInitNewSource,
  ports? : Array[MessagePort],
) -> ExtendableMessageEventInit {
  extendable_message_event_init_ffi(
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
pub fn ExtendableMessageEventInit::empty() -> ExtendableMessageEventInit {
  extendable_message_event_init_empty_ffi()
}

///|
pub(open) trait TExtendableMessageEventInitGetSource: TJsValue {}

///|
pub impl TExtendableMessageEventInitGetSource for Client

///|
pub impl TExtendableMessageEventInitGetSource for ServiceWorker

///|
pub impl TExtendableMessageEventInitGetSource for MessagePort

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
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TExtendableMessageEventInitGetSource + FromJsAny] ExtendableMessageEventInitGetSource::into(
  self : ExtendableMessageEventInitGetSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TExtendableMessageEventInitGetSource + FromJsAny] ExtendableMessageEventInitGetSource::unsafe_into(
  self : ExtendableMessageEventInitGetSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TExtendableMessageEventInitGetSource] ExtendableMessageEventInitGetSource::from(
  value : T,
) -> ExtendableMessageEventInitGetSource = "%identity"

///|
pub impl TExtendableMessageEventInitGetSource for ExtendableMessageEventInitGetSource

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

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> ExtendableMessageEventInit =
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
extern "js" fn extendable_message_event_init_empty_ffi() -> ExtendableMessageEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_data_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_origin_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_last_event_id_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lastEventId"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_source_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
extern "js" fn extendable_message_event_init_get_ports_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ports"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  data : JsValue,
  origin : JsValue,
  last_event_id : JsValue,
  source : JsValue,
  ports : JsValue,
) -> ExtendableMessageEventInit = "webapi_ExtendableMessageEventInit" "new"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_empty_ffi() -> ExtendableMessageEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_data_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEventInit" "get_data"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_origin_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEventInit" "get_origin"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_last_event_id_ffi(
  obj : JsValue,
) -> JsValue = "webapi_ExtendableMessageEventInit" "get_lastEventId"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_source_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEventInit" "get_source"

///|
#cfg(target="wasm-gc")
fn extendable_message_event_init_get_ports_ffi(obj : JsValue) -> JsValue = "webapi_ExtendableMessageEventInit" "get_ports"
