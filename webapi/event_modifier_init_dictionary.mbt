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
) -> EventModifierInit {
  event_modifier_init_ffi(
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
