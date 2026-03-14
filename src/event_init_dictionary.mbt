// Do not edit. This file is generated.
// MoonBit type: EventInit
// Specifications: dom.idl

///|
/// [EventInit](https://developer.mozilla.org/en-US/docs/Web/API/EventInit)
#external
pub type EventInit

///|
pub impl TJsValue for EventInit with to_js(self : EventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for EventInit with from_js_any(value : JsAny) -> EventInit = "%identity"

///|
pub fn EventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
) -> EventInit {
  event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed))
}

///|
pub fn EventInit::empty() -> EventInit {
  event_init_empty_ffi()
}

///|
pub fn EventInit::bubbles(self : EventInit) -> Bool? {
  event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventInit::cancelable(self : EventInit) -> Bool? {
  event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventInit::composed(self : EventInit) -> Bool? {
  event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
) -> EventInit =
  #|(bubbles, cancelable, composed) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn event_init_empty_ffi() -> EventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="wasm-gc")
fn event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
) -> EventInit = "webapi_EventInit" "new"

///|
#cfg(target="wasm-gc")
fn event_init_empty_ffi() -> EventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_EventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_EventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_EventInit" "get_composed"
