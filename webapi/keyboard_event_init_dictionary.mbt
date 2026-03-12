// Do not edit. This file is generated.
// MoonBit type: KeyboardEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [KeyboardEventInit](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEventInit)
#external
pub type KeyboardEventInit

///|
pub impl TJsValue for KeyboardEventInit with to_js(self : KeyboardEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyboardEventInit with from_js_any(value : JsAny) -> KeyboardEventInit = "%identity"

///|
pub fn KeyboardEventInit::new(
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
  key? : String,
  code? : String,
  location? : UInt,
  repeat? : Bool,
  is_composing? : Bool,
  char_code? : UInt,
  key_code? : UInt,
) -> KeyboardEventInit {
  keyboard_event_init_ffi(
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
    opt_to_js(key),
    opt_to_js(code),
    opt_to_js(location),
    opt_to_js(repeat),
    opt_to_js(is_composing),
    opt_to_js(char_code),
    opt_to_js(key_code),
  )
}

///|
pub fn KeyboardEventInit::empty() -> KeyboardEventInit {
  keyboard_event_init_empty_ffi()
}

///|
pub fn KeyboardEventInit::bubbles(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::cancelable(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::composed(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::view(self : KeyboardEventInit) -> Window? {
  keyboard_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyboardEventInit::detail(self : KeyboardEventInit) -> Int? {
  keyboard_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::which(self : KeyboardEventInit) -> UInt? {
  keyboard_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::ctrl_key(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::shift_key(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::alt_key(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::meta_key(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_alt_graph(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_caps_lock(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_fn(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_fn_lock(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_hyper(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_num_lock(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_scroll_lock(
  self : KeyboardEventInit,
) -> Bool? {
  keyboard_event_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_super(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_symbol(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::modifier_symbol_lock(
  self : KeyboardEventInit,
) -> Bool? {
  keyboard_event_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::key(self : KeyboardEventInit) -> String? {
  keyboard_event_init_get_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::code(self : KeyboardEventInit) -> String? {
  keyboard_event_init_get_code_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::location(self : KeyboardEventInit) -> UInt? {
  keyboard_event_init_get_location_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::repeat(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_repeat_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::is_composing(self : KeyboardEventInit) -> Bool? {
  keyboard_event_init_get_is_composing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::char_code(self : KeyboardEventInit) -> UInt? {
  keyboard_event_init_get_char_code_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyboardEventInit::key_code(self : KeyboardEventInit) -> UInt? {
  keyboard_event_init_get_key_code_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_ffi(
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
  key : JsValue,
  code : JsValue,
  location : JsValue,
  repeat : JsValue,
  is_composing : JsValue,
  char_code : JsValue,
  key_code : JsValue,
) -> KeyboardEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, key, code, location, repeat, isComposing, charCode, keyCode) => {
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
  #|  if (key !== undefined) obj.key = key;
  #|  if (code !== undefined) obj.code = code;
  #|  if (location !== undefined) obj.location = location;
  #|  if (repeat !== undefined) obj.repeat = repeat;
  #|  if (isComposing !== undefined) obj.isComposing = isComposing;
  #|  if (charCode !== undefined) obj.charCode = charCode;
  #|  if (keyCode !== undefined) obj.keyCode = keyCode;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_empty_ffi() -> KeyboardEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.view"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_which_ffi(obj : JsValue) -> JsValue = "(obj) => obj.which"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_alt_graph_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierAltGraph"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_caps_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierCapsLock"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_fn_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFn"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_fn_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFnLock"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_hyper_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierHyper"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_num_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierNumLock"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_scroll_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierScrollLock"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_super_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSuper"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_symbol_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbol"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_modifier_symbol_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbolLock"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_location_ffi(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_repeat_ffi(obj : JsValue) -> JsValue = "(obj) => obj.repeat"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_is_composing_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isComposing"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_char_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.charCode"

///|
#cfg(target="js")
extern "js" fn keyboard_event_init_get_key_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.keyCode"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_ffi(
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
  key : JsValue,
  code : JsValue,
  location : JsValue,
  repeat : JsValue,
  is_composing : JsValue,
  char_code : JsValue,
  key_code : JsValue,
) -> KeyboardEventInit = "webapi_KeyboardEventInit" "new"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_empty_ffi() -> KeyboardEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_view"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_detail"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_which"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_ctrlKey"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_shiftKey"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_altKey"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_metaKey"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_alt_graph_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierAltGraph"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_caps_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierCapsLock"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierFn"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_fn_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierFnLock"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_hyper_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierHyper"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_num_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierNumLock"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_scroll_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierScrollLock"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_super_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierSuper"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_symbol_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierSymbol"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_modifier_symbol_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierSymbolLock"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_key"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_code"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_location_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_location"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_repeat_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_repeat"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_is_composing_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_isComposing"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_char_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_charCode"

///|
#cfg(target="wasm-gc")
fn keyboard_event_init_get_key_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_keyCode"
