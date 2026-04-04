// Do not edit. This file is generated.
// MoonBit type: PopStateEventInit
// Specifications: dom.idl, html.idl

///|
/// [PopStateEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEventInit)
#external
pub type PopStateEventInit

///|
pub impl TJsValue for PopStateEventInit with to_js(self : PopStateEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for PopStateEventInit with from_js_any(value : JsAny) -> PopStateEventInit = "%identity"

///|
pub fn PopStateEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  state? : JsValue,
  has_ua_visual_transition? : Bool,
) -> PopStateEventInit {
  pop_state_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(state),
    opt_to_js(has_ua_visual_transition),
  )
}

///|
pub fn PopStateEventInit::empty() -> PopStateEventInit {
  pop_state_event_init_empty_ffi()
}

///|
pub fn PopStateEventInit::bubbles(self : PopStateEventInit) -> Bool? {
  pop_state_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PopStateEventInit::cancelable(self : PopStateEventInit) -> Bool? {
  pop_state_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PopStateEventInit::composed(self : PopStateEventInit) -> Bool? {
  pop_state_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PopStateEventInit::state(self : PopStateEventInit) -> JsValue? {
  pop_state_event_init_get_state_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn PopStateEventInit::has_ua_visual_transition(
  self : PopStateEventInit,
) -> Bool? {
  pop_state_event_init_get_has_ua_visual_transition_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn pop_state_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  state : JsValue,
  has_ua_visual_transition : JsValue,
) -> PopStateEventInit =
  #|(bubbles, cancelable, composed, state, hasUAVisualTransition) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (state !== undefined) obj.state = state;
  #|  if (hasUAVisualTransition !== undefined) obj.hasUAVisualTransition = hasUAVisualTransition;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn pop_state_event_init_empty_ffi() -> PopStateEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn pop_state_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn pop_state_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn pop_state_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn pop_state_event_init_get_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
#cfg(target="js")
extern "js" fn pop_state_event_init_get_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"

///|
#cfg(target="wasm-gc")
fn pop_state_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  state : JsValue,
  has_ua_visual_transition : JsValue,
) -> PopStateEventInit = "webapi_PopStateEventInit" "new"

///|
#cfg(target="wasm-gc")
fn pop_state_event_init_empty_ffi() -> PopStateEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn pop_state_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_PopStateEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn pop_state_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_PopStateEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn pop_state_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_PopStateEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn pop_state_event_init_get_state_ffi(obj : JsValue) -> JsValue = "webapi_PopStateEventInit" "get_state"

///|
#cfg(target="wasm-gc")
fn pop_state_event_init_get_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "webapi_PopStateEventInit" "get_hasUAVisualTransition"
