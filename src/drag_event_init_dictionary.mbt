// Do not edit. This file is generated.
// MoonBit type: DragEventInit
// Specifications: uievents.idl, dom.idl, html.idl

///|
/// [DragEventInit](https://developer.mozilla.org/en-US/docs/Web/API/DragEventInit)
#external
pub type DragEventInit

///|
pub impl TJsValue for DragEventInit with to_js(self : DragEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for DragEventInit with from_js_any(value : JsAny) -> DragEventInit = "%identity"

///|
pub fn DragEventInit::new(
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
  data_transfer? : &TDataTransfer,
) -> DragEventInit {
  drag_event_init_ffi(
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
    opt_to_js(data_transfer),
  )
}

///|
pub fn DragEventInit::empty() -> DragEventInit {
  drag_event_init_empty_ffi()
}

///|
pub fn DragEventInit::bubbles(self : DragEventInit) -> Bool? {
  drag_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::cancelable(self : DragEventInit) -> Bool? {
  drag_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::composed(self : DragEventInit) -> Bool? {
  drag_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::view(self : DragEventInit) -> Window? {
  drag_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DragEventInit::detail(self : DragEventInit) -> Int? {
  drag_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::which(self : DragEventInit) -> UInt? {
  drag_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::ctrl_key(self : DragEventInit) -> Bool? {
  drag_event_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::shift_key(self : DragEventInit) -> Bool? {
  drag_event_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::alt_key(self : DragEventInit) -> Bool? {
  drag_event_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::meta_key(self : DragEventInit) -> Bool? {
  drag_event_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_alt_graph(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_caps_lock(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_fn(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_fn_lock(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_hyper(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_num_lock(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_scroll_lock(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_super(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_symbol(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::modifier_symbol_lock(self : DragEventInit) -> Bool? {
  drag_event_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::screen_x(self : DragEventInit) -> Int? {
  drag_event_init_get_screen_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::screen_y(self : DragEventInit) -> Int? {
  drag_event_init_get_screen_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::client_x(self : DragEventInit) -> Int? {
  drag_event_init_get_client_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::client_y(self : DragEventInit) -> Int? {
  drag_event_init_get_client_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::button(self : DragEventInit) -> Int? {
  drag_event_init_get_button_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::buttons(self : DragEventInit) -> UInt? {
  drag_event_init_get_buttons_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DragEventInit::related_target(self : DragEventInit) -> EventTarget? {
  drag_event_init_get_related_target_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DragEventInit::data_transfer(self : DragEventInit) -> DataTransfer? {
  drag_event_init_get_data_transfer_ffi(TJsValue::to_js(self)).to_option()
}
