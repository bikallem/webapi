// Do not edit. This file is generated.
// MoonBit type: EventModifierInit
// Specifications: uievents.idl, dom.idl

///|
/// [EventModifierInit](https://developer.mozilla.org/en-US/docs/Web/API/EventModifierInit)
#external
pub type EventModifierInit

///|
pub impl TJsValue for EventModifierInit with to_js(self : EventModifierInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for EventModifierInit with from_js_any(value : JsAny) -> EventModifierInit = "%identity"

///|
pub fn EventModifierInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  view? : &TWindow,
  detail? : Int,
  which? : UInt,
  ctrl_key? : Bool,
  shift_key? : Bool,
  alt_key? : Bool,
  meta_key? : Bool,
  modifier_alt_graph? : Bool,
  modifier_caps_lock? : Bool,
  modifier_fn? : Bool,
  modifier_fn_lock? : Bool,
  modifier_hyper? : Bool,
  modifier_num_lock? : Bool,
  modifier_scroll_lock? : Bool,
  modifier_super? : Bool,
  modifier_symbol? : Bool,
  modifier_symbol_lock? : Bool,
) -> EventModifierInit {
  event_modifier_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view),
    opt_to_js(detail),
    opt_to_js(which),
    opt_to_js(ctrl_key),
    opt_to_js(shift_key),
    opt_to_js(alt_key),
    opt_to_js(meta_key),
    opt_to_js(modifier_alt_graph),
    opt_to_js(modifier_caps_lock),
    opt_to_js(modifier_fn),
    opt_to_js(modifier_fn_lock),
    opt_to_js(modifier_hyper),
    opt_to_js(modifier_num_lock),
    opt_to_js(modifier_scroll_lock),
    opt_to_js(modifier_super),
    opt_to_js(modifier_symbol),
    opt_to_js(modifier_symbol_lock),
  )
}

///|
pub fn EventModifierInit::empty() -> EventModifierInit {
  event_modifier_init_empty_ffi()
}

///|
pub fn EventModifierInit::bubbles(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::cancelable(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::composed(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::view(self : EventModifierInit) -> Window? {
  event_modifier_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn EventModifierInit::detail(self : EventModifierInit) -> Int? {
  event_modifier_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::which(self : EventModifierInit) -> UInt? {
  event_modifier_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::ctrl_key(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::shift_key(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::alt_key(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::meta_key(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_alt_graph(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_caps_lock(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_fn(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_fn_lock(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_hyper(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_num_lock(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_scroll_lock(
  self : EventModifierInit,
) -> Bool? {
  event_modifier_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_super(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_symbol(self : EventModifierInit) -> Bool? {
  event_modifier_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EventModifierInit::modifier_symbol_lock(
  self : EventModifierInit,
) -> Bool? {
  event_modifier_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn event_modifier_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  ctrl_key : JsValue,
  shift_key : JsValue,
  alt_key : JsValue,
  meta_key : JsValue,
  modifier_alt_graph : JsValue,
  modifier_caps_lock : JsValue,
  modifier_fn : JsValue,
  modifier_fn_lock : JsValue,
  modifier_hyper : JsValue,
  modifier_num_lock : JsValue,
  modifier_scroll_lock : JsValue,
  modifier_super : JsValue,
  modifier_symbol : JsValue,
  modifier_symbol_lock : JsValue,
) -> EventModifierInit =
  #|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
  #|  if (shiftKey !== undefined) obj.shiftKey = shiftKey;
  #|  if (altKey !== undefined) obj.altKey = altKey;
  #|  if (metaKey !== undefined) obj.metaKey = metaKey;
  #|  if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
  #|  if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
  #|  if (modifierFn !== undefined) obj.modifierFn = modifierFn;
  #|  if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
  #|  if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
  #|  if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
  #|  if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
  #|  if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
  #|  if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
  #|  if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn event_modifier_init_empty_ffi() -> EventModifierInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.view"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_which_ffi(obj : JsValue) -> JsValue = "(obj) => obj.which"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_alt_graph_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierAltGraph"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_caps_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierCapsLock"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_fn_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFn"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_fn_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFnLock"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_hyper_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierHyper"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_num_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierNumLock"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_scroll_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierScrollLock"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_super_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSuper"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_symbol_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbol"

///|
#cfg(target="js")
extern "js" fn event_modifier_init_get_modifier_symbol_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbolLock"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  ctrl_key : JsValue,
  shift_key : JsValue,
  alt_key : JsValue,
  meta_key : JsValue,
  modifier_alt_graph : JsValue,
  modifier_caps_lock : JsValue,
  modifier_fn : JsValue,
  modifier_fn_lock : JsValue,
  modifier_hyper : JsValue,
  modifier_num_lock : JsValue,
  modifier_scroll_lock : JsValue,
  modifier_super : JsValue,
  modifier_symbol : JsValue,
  modifier_symbol_lock : JsValue,
) -> EventModifierInit = "webapi_EventModifierInit" "new"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_empty_ffi() -> EventModifierInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_view"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_detail"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_which"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_ctrlKey"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_shiftKey"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_altKey"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_metaKey"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_alt_graph_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierAltGraph"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_caps_lock_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierCapsLock"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierFn"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_fn_lock_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierFnLock"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_hyper_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierHyper"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_num_lock_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierNumLock"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_scroll_lock_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierScrollLock"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_super_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierSuper"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_symbol_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierSymbol"

///|
#cfg(target="wasm-gc")
fn event_modifier_init_get_modifier_symbol_lock_ffi(obj : JsValue) -> JsValue = "webapi_EventModifierInit" "get_modifierSymbolLock"
