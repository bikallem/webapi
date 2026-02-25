// Do not edit. This file is generated.
// MoonBit type: TouchEventInit
// Specifications: uievents.idl, touch-events.idl, dom.idl

///|
/// [TouchEventInit](https://developer.mozilla.org/en-US/docs/Web/API/TouchEventInit)
#external
pub type TouchEventInit

///|
pub impl TJsValue for TouchEventInit with to_js(self : TouchEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for TouchEventInit with from_js_any(value : JsAny) -> TouchEventInit = "%identity"

///|
pub fn TouchEventInit::new(
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
  touches? : Array[Touch] = [],
  target_touches? : Array[Touch] = [],
  changed_touches? : Array[Touch] = [],
) -> TouchEventInit {
  touch_event_init_ffi(
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
    TJsValue::to_js(touches),
    TJsValue::to_js(target_touches),
    TJsValue::to_js(changed_touches),
  )
}

///|
pub fn TouchEventInit::empty() -> TouchEventInit {
  touch_event_init_empty_ffi()
}

///|
pub fn TouchEventInit::bubbles(self : TouchEventInit) -> Bool? {
  touch_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::cancelable(self : TouchEventInit) -> Bool? {
  touch_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::composed(self : TouchEventInit) -> Bool? {
  touch_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::view(self : TouchEventInit) -> Window? {
  touch_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn TouchEventInit::detail(self : TouchEventInit) -> Int? {
  touch_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::which(self : TouchEventInit) -> UInt? {
  touch_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::ctrl_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::shift_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::alt_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::meta_key(self : TouchEventInit) -> Bool? {
  touch_event_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_alt_graph(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_caps_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_fn(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_fn_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_hyper(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_num_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_scroll_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_super(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_symbol(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::modifier_symbol_lock(self : TouchEventInit) -> Bool? {
  touch_event_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn TouchEventInit::touches(self : TouchEventInit) -> Array[Touch]? {
  touch_event_init_get_touches_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn TouchEventInit::target_touches(self : TouchEventInit) -> Array[Touch]? {
  touch_event_init_get_target_touches_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn TouchEventInit::changed_touches(self : TouchEventInit) -> Array[Touch]? {
  touch_event_init_get_changed_touches_ffi(TJsValue::to_js(self)).to_option()
}
