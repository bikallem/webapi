// Do not edit. This file is generated.
// MoonBit type: MouseEventInit
// Specifications: dom.idl, uievents.idl, pointerevents.idl

///|
/// [MouseEventInit](https://developer.mozilla.org/en-US/docs/Web/API/MouseEventInit)
#external
pub type MouseEventInit

///|
pub impl TJsValue for MouseEventInit with to_js(self : MouseEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for MouseEventInit with from_js_any(value : JsAny) -> MouseEventInit = "%identity"

///|
pub fn MouseEventInit::new(
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
  screen_x? : Int,
  screen_y? : Int,
  client_x? : Int,
  client_y? : Int,
  button? : Int,
  buttons? : UInt,
  related_target? : &TEventTarget,
) -> MouseEventInit {
  mouse_event_init_ffi(
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
    opt_to_js(screen_x),
    opt_to_js(screen_y),
    opt_to_js(client_x),
    opt_to_js(client_y),
    opt_to_js(button),
    opt_to_js(buttons),
    opt_to_js(related_target),
  )
}

///|
pub fn MouseEventInit::empty() -> MouseEventInit {
  mouse_event_init_empty_ffi()
}

///|
pub fn MouseEventInit::bubbles(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::cancelable(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::composed(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::view(self : MouseEventInit) -> Window? {
  mouse_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn MouseEventInit::detail(self : MouseEventInit) -> Int? {
  mouse_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::which(self : MouseEventInit) -> UInt? {
  mouse_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::ctrl_key(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::shift_key(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::alt_key(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::meta_key(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_alt_graph(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_caps_lock(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_fn(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_fn_lock(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_hyper(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_num_lock(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_scroll_lock(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_super(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_symbol(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::modifier_symbol_lock(self : MouseEventInit) -> Bool? {
  mouse_event_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::screen_x(self : MouseEventInit) -> Int? {
  mouse_event_init_get_screen_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::screen_y(self : MouseEventInit) -> Int? {
  mouse_event_init_get_screen_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::client_x(self : MouseEventInit) -> Int? {
  mouse_event_init_get_client_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::client_y(self : MouseEventInit) -> Int? {
  mouse_event_init_get_client_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::button(self : MouseEventInit) -> Int? {
  mouse_event_init_get_button_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::buttons(self : MouseEventInit) -> UInt? {
  mouse_event_init_get_buttons_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MouseEventInit::related_target(self : MouseEventInit) -> EventTarget? {
  mouse_event_init_get_related_target_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_init_ffi(
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
  screen_x : JsValue,
  screen_y : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  button : JsValue,
  buttons : JsValue,
  related_target : JsValue,
) -> MouseEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, screenX, screenY, clientX, clientY, button, buttons, relatedTarget) => {
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
  #|  if (screenX !== undefined) obj.screenX = screenX;
  #|  if (screenY !== undefined) obj.screenY = screenY;
  #|  if (clientX !== undefined) obj.clientX = clientX;
  #|  if (clientY !== undefined) obj.clientY = clientY;
  #|  if (button !== undefined) obj.button = button;
  #|  if (buttons !== undefined) obj.buttons = buttons;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn mouse_event_init_empty_ffi() -> MouseEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.view"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_which_ffi(obj : JsValue) -> JsValue = "(obj) => obj.which"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_alt_graph_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierAltGraph"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_caps_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierCapsLock"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "(obj) => obj.modifierFn"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_fn_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFnLock"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_hyper_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierHyper"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_num_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierNumLock"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_scroll_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierScrollLock"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_super_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSuper"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_symbol_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbol"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_modifier_symbol_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbolLock"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_screen_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.screenX"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_screen_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.screenY"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_client_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.clientX"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_client_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.clientY"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_button_ffi(obj : JsValue) -> JsValue = "(obj) => obj.button"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_buttons_ffi(obj : JsValue) -> JsValue = "(obj) => obj.buttons"

///|
#cfg(target="js")
extern "js" fn mouse_event_init_get_related_target_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.relatedTarget"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_ffi(
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
  screen_x : JsValue,
  screen_y : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  button : JsValue,
  buttons : JsValue,
  related_target : JsValue,
) -> MouseEventInit = "webapi_MouseEventInit" "new"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_empty_ffi() -> MouseEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_view"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_detail"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_which"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_ctrlKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_shiftKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_altKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_metaKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_alt_graph_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierAltGraph"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_caps_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierCapsLock"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierFn"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_fn_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierFnLock"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_hyper_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierHyper"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_num_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierNumLock"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_scroll_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierScrollLock"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_super_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierSuper"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_symbol_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierSymbol"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_modifier_symbol_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierSymbolLock"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_screen_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_screenX"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_screen_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_screenY"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_client_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_clientX"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_client_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_clientY"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_button_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_button"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_buttons_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_buttons"

///|
#cfg(target="wasm-gc")
fn mouse_event_init_get_related_target_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_relatedTarget"
