// Do not edit. This file is generated.
// MoonBit type: TouchEventInit
// Specifications: uievents.idl, touch-events.idl, dom.idl

/// [TouchEventInit](https://developer.mozilla.org/en-US/docs/Web/API/TouchEventInit)
#external
pub type TouchEventInit

pub impl TJsValue for TouchEventInit with to_js(self: TouchEventInit) -> JsValue = "%identity"

pub impl FromJsAny for TouchEventInit with from_js_any(value : JsAny) -> TouchEventInit = "%identity"

pub fn TouchEventInit::new(bubbles? : Bool, 
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
touches? : Array[Touch], 
target_touches? : Array[Touch], 
changed_touches? : Array[Touch]) -> TouchEventInit {
  touch_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(view), opt_to_js(detail), opt_to_js(which), opt_to_js(ctrl_key), opt_to_js(shift_key), opt_to_js(alt_key), opt_to_js(meta_key), opt_to_js(modifier_alt_graph), opt_to_js(modifier_caps_lock), opt_to_js(modifier_fn), opt_to_js(modifier_fn_lock), opt_to_js(modifier_hyper), opt_to_js(modifier_num_lock), opt_to_js(modifier_scroll_lock), opt_to_js(modifier_super), opt_to_js(modifier_symbol), opt_to_js(modifier_symbol_lock), opt_to_js(touches), opt_to_js(target_touches), opt_to_js(changed_touches))
}

pub fn TouchEventInit::empty() -> TouchEventInit { touch_event_init_empty_ffi() }

pub fn TouchEventInit::bubbles(self : TouchEventInit) -> Bool? {
  touch_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::cancelable(self : TouchEventInit) -> Bool? {
  touch_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::composed(self : TouchEventInit) -> Bool? {
  touch_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::view(self : TouchEventInit) -> Window? {
  touch_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

pub fn TouchEventInit::detail(self : TouchEventInit) -> Int? {
  touch_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::which(self : TouchEventInit) -> UInt? {
  touch_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::ctrl_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::shift_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::alt_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::meta_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_alt_graph(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_caps_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_fn(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_fn_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_hyper(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_num_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_scroll_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_super(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_symbol(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::modifier_symbol_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TouchEventInit::touches(self : TouchEventInit) -> Array[Touch]? {
  touch_event_init_get_touches_ffi(TJsValue::to_js(self)).to_option()
}

pub fn TouchEventInit::target_touches(self : TouchEventInit) -> Array[Touch]? {
  touch_event_init_get_target_touches_ffi(TJsValue::to_js(self)).to_option()
}

pub fn TouchEventInit::changed_touches(self : TouchEventInit) -> Array[Touch]? {
  touch_event_init_get_changed_touches_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn touch_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, ctrl_key: JsValue, shift_key: JsValue, alt_key: JsValue, meta_key: JsValue, modifier_alt_graph: JsValue, modifier_caps_lock: JsValue, modifier_fn: JsValue, modifier_fn_lock: JsValue, modifier_hyper: JsValue, modifier_num_lock: JsValue, modifier_scroll_lock: JsValue, modifier_super: JsValue, modifier_symbol: JsValue, modifier_symbol_lock: JsValue, touches: JsValue, target_touches: JsValue, changed_touches: JsValue) -> TouchEventInit = 
#|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, touches, targetTouches, changedTouches) => {
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
#|  if (touches !== undefined) obj.touches = touches;
#|  if (targetTouches !== undefined) obj.targetTouches = targetTouches;
#|  if (changedTouches !== undefined) obj.changedTouches = changedTouches;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn touch_event_init_empty_ffi() -> TouchEventInit = "() => {}"

#cfg(target="js")
extern "js" fn touch_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn touch_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn touch_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn touch_event_init_get_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

#cfg(target="js")
extern "js" fn touch_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

#cfg(target="js")
extern "js" fn touch_event_init_get_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"

#cfg(target="js")
extern "js" fn touch_event_init_get_ctrl_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ctrlKey"

#cfg(target="js")
extern "js" fn touch_event_init_get_shift_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shiftKey"

#cfg(target="js")
extern "js" fn touch_event_init_get_alt_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.altKey"

#cfg(target="js")
extern "js" fn touch_event_init_get_meta_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.metaKey"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_alt_graph_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierAltGraph"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_caps_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierCapsLock"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_fn_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierFn"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_fn_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierFnLock"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_hyper_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierHyper"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_num_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierNumLock"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_scroll_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierScrollLock"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_super_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierSuper"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_symbol_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierSymbol"

#cfg(target="js")
extern "js" fn touch_event_init_get_modifier_symbol_lock_ffi(obj: JsValue) -> JsValue = "(obj) => obj.modifierSymbolLock"

#cfg(target="js")
extern "js" fn touch_event_init_get_touches_ffi(obj: JsValue) -> JsValue = "(obj) => obj.touches"

#cfg(target="js")
extern "js" fn touch_event_init_get_target_touches_ffi(obj: JsValue) -> JsValue = "(obj) => obj.targetTouches"

#cfg(target="js")
extern "js" fn touch_event_init_get_changed_touches_ffi(obj: JsValue) -> JsValue = "(obj) => obj.changedTouches"

#cfg(target="wasm-gc")
fn touch_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, ctrl_key: JsValue, shift_key: JsValue, alt_key: JsValue, meta_key: JsValue, modifier_alt_graph: JsValue, modifier_caps_lock: JsValue, modifier_fn: JsValue, modifier_fn_lock: JsValue, modifier_hyper: JsValue, modifier_num_lock: JsValue, modifier_scroll_lock: JsValue, modifier_super: JsValue, modifier_symbol: JsValue, modifier_symbol_lock: JsValue, touches: JsValue, target_touches: JsValue, changed_touches: JsValue) -> TouchEventInit = "webapi_TouchEventInit" "new"

#cfg(target="wasm-gc")
fn touch_event_init_empty_ffi() -> TouchEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn touch_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn touch_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn touch_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_composed"

#cfg(target="wasm-gc")
fn touch_event_init_get_view_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_view"

#cfg(target="wasm-gc")
fn touch_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_detail"

#cfg(target="wasm-gc")
fn touch_event_init_get_which_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_which"

#cfg(target="wasm-gc")
fn touch_event_init_get_ctrl_key_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_ctrlKey"

#cfg(target="wasm-gc")
fn touch_event_init_get_shift_key_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_shiftKey"

#cfg(target="wasm-gc")
fn touch_event_init_get_alt_key_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_altKey"

#cfg(target="wasm-gc")
fn touch_event_init_get_meta_key_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_metaKey"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_alt_graph_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierAltGraph"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_caps_lock_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierCapsLock"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_fn_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierFn"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_fn_lock_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierFnLock"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_hyper_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierHyper"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_num_lock_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierNumLock"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_scroll_lock_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierScrollLock"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_super_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierSuper"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_symbol_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierSymbol"

#cfg(target="wasm-gc")
fn touch_event_init_get_modifier_symbol_lock_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierSymbolLock"

#cfg(target="wasm-gc")
fn touch_event_init_get_touches_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_touches"

#cfg(target="wasm-gc")
fn touch_event_init_get_target_touches_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_targetTouches"

#cfg(target="wasm-gc")
fn touch_event_init_get_changed_touches_ffi(obj: JsValue) -> JsValue = "webapi_TouchEventInit" "get_changedTouches"