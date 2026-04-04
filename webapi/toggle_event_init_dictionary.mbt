// Do not edit. This file is generated.
// MoonBit type: ToggleEventInit
// Specifications: dom.idl, html.idl

///|
/// [ToggleEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEventInit)
#external
pub type ToggleEventInit

///|
pub impl TJsValue for ToggleEventInit with to_js(self : ToggleEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ToggleEventInit with from_js_any(value : JsAny) -> ToggleEventInit = "%identity"

///|
pub fn ToggleEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  old_state? : String,
  new_state? : String,
  source? : &TElement,
) -> ToggleEventInit {
  toggle_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(old_state),
    opt_to_js(new_state),
    opt_to_js(source),
  )
}

///|
pub fn ToggleEventInit::empty() -> ToggleEventInit {
  toggle_event_init_empty_ffi()
}

///|
pub fn ToggleEventInit::bubbles(self : ToggleEventInit) -> Bool? {
  toggle_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ToggleEventInit::cancelable(self : ToggleEventInit) -> Bool? {
  toggle_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ToggleEventInit::composed(self : ToggleEventInit) -> Bool? {
  toggle_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ToggleEventInit::old_state(self : ToggleEventInit) -> String? {
  toggle_event_init_get_old_state_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ToggleEventInit::new_state(self : ToggleEventInit) -> String? {
  toggle_event_init_get_new_state_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ToggleEventInit::source(self : ToggleEventInit) -> Element? {
  toggle_event_init_get_source_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn toggle_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_state : JsValue,
  new_state : JsValue,
  source : JsValue,
) -> ToggleEventInit =
  #|(bubbles, cancelable, composed, oldState, newState, source) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (oldState !== undefined) obj.oldState = oldState;
  #|  if (newState !== undefined) obj.newState = newState;
  #|  if (source !== undefined) obj.source = source;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn toggle_event_init_empty_ffi() -> ToggleEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn toggle_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn toggle_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn toggle_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn toggle_event_init_get_old_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oldState"

///|
#cfg(target="js")
extern "js" fn toggle_event_init_get_new_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.newState"

///|
#cfg(target="js")
extern "js" fn toggle_event_init_get_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_state : JsValue,
  new_state : JsValue,
  source : JsValue,
) -> ToggleEventInit = "webapi_ToggleEventInit" "new"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_empty_ffi() -> ToggleEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_ToggleEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_ToggleEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_ToggleEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_get_old_state_ffi(obj : JsValue) -> JsValue = "webapi_ToggleEventInit" "get_oldState"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_get_new_state_ffi(obj : JsValue) -> JsValue = "webapi_ToggleEventInit" "get_newState"

///|
#cfg(target="wasm-gc")
fn toggle_event_init_get_source_ffi(obj : JsValue) -> JsValue = "webapi_ToggleEventInit" "get_source"
