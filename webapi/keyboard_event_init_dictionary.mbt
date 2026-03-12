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
