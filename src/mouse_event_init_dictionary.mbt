// Do not edit. This file is generated.
// MoonBit type: MouseEventInit
// Specifications: uievents.idl, dom.idl

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
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow,
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  ctrl_key? : Bool = false,
  shift_key? : Bool = false,
  alt_key? : Bool = false,
  meta_key? : Bool = false,
  modifier_alt_graph? : Bool = false,
  modifier_caps_lock? : Bool = false,
  modifier_fn? : Bool = false,
  modifier_fn_lock? : Bool = false,
  modifier_hyper? : Bool = false,
  modifier_num_lock? : Bool = false,
  modifier_scroll_lock? : Bool = false,
  modifier_super? : Bool = false,
  modifier_symbol? : Bool = false,
  modifier_symbol_lock? : Bool = false,
  screen_x? : Int = (0 : Int),
  screen_y? : Int = (0 : Int),
  client_x? : Int = (0 : Int),
  client_y? : Int = (0 : Int),
  button? : Int = (0 : Int),
  buttons? : UInt = (0 : UInt),
  related_target? : &TEventTarget,
) -> MouseEventInit {
  mouse_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    TJsValue::to_js(ctrl_key),
    TJsValue::to_js(shift_key),
    TJsValue::to_js(alt_key),
    TJsValue::to_js(meta_key),
    TJsValue::to_js(modifier_alt_graph),
    TJsValue::to_js(modifier_caps_lock),
    TJsValue::to_js(modifier_fn),
    TJsValue::to_js(modifier_fn_lock),
    TJsValue::to_js(modifier_hyper),
    TJsValue::to_js(modifier_num_lock),
    TJsValue::to_js(modifier_scroll_lock),
    TJsValue::to_js(modifier_super),
    TJsValue::to_js(modifier_symbol),
    TJsValue::to_js(modifier_symbol_lock),
    TJsValue::to_js(screen_x),
    TJsValue::to_js(screen_y),
    TJsValue::to_js(client_x),
    TJsValue::to_js(client_y),
    TJsValue::to_js(button),
    TJsValue::to_js(buttons),
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
