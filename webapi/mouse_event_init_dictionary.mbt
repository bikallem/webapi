// Do not edit. This file is generated.
// MoonBit type: MouseEventInit
// Specifications: pointerevents.idl, uievents.idl, dom.idl

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
