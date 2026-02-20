// Do not edit. This file is generated.
// MoonBit type: PointerEventInit
// Specifications: pointerevents.idl, uievents.idl, dom.idl

///|
/// [PointerEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PointerEventInit)
#external
pub type PointerEventInit

///|
pub impl TJsValue for PointerEventInit with to_js(self : PointerEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for PointerEventInit with from_js_any(value : JsAny) -> PointerEventInit = "%identity"

///|
pub fn PointerEventInit::new(
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
  pointer_id? : Int = (0 : Int),
  width? : Double = (1 : Double),
  height? : Double = (1 : Double),
  pressure? : Float = (0 : Float),
  tangential_pressure? : Float = (0 : Float),
  tilt_x? : Int,
  tilt_y? : Int,
  twist? : Int = (0 : Int),
  altitude_angle? : Double,
  azimuth_angle? : Double,
  pointer_type? : String = "",
  is_primary? : Bool = false,
  persistent_device_id? : Int = (0 : Int),
  coalesced_events? : Array[PointerEvent] = [],
  predicted_events? : Array[PointerEvent] = [],
) -> PointerEventInit {
  pointer_event_init_ffi(
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
    TJsValue::to_js(pointer_id),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
    TJsValue::to_js(pressure),
    TJsValue::to_js(tangential_pressure),
    opt_to_js(tilt_x),
    opt_to_js(tilt_y),
    TJsValue::to_js(twist),
    opt_to_js(altitude_angle),
    opt_to_js(azimuth_angle),
    TJsValue::to_js(pointer_type),
    TJsValue::to_js(is_primary),
    TJsValue::to_js(persistent_device_id),
    TJsValue::to_js(coalesced_events),
    TJsValue::to_js(predicted_events),
  )
}

///|
pub fn PointerEventInit::empty() -> PointerEventInit {
  pointer_event_init_empty_ffi()
}

///|
pub fn PointerEventInit::bubbles(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::cancelable(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::composed(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::view(self : PointerEventInit) -> Window? {
  pointer_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn PointerEventInit::detail(self : PointerEventInit) -> Int? {
  pointer_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::which(self : PointerEventInit) -> UInt? {
  pointer_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::ctrl_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_ctrl_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::shift_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_shift_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::alt_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_alt_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::meta_key(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_meta_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_alt_graph(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_alt_graph_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_caps_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_caps_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_fn(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_fn_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_fn_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_hyper(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_num_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_scroll_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_scroll_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_super(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_super_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_symbol(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::modifier_symbol_lock(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_modifier_symbol_lock_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::screen_x(self : PointerEventInit) -> Int? {
  pointer_event_init_get_screen_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::screen_y(self : PointerEventInit) -> Int? {
  pointer_event_init_get_screen_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::client_x(self : PointerEventInit) -> Int? {
  pointer_event_init_get_client_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::client_y(self : PointerEventInit) -> Int? {
  pointer_event_init_get_client_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::button(self : PointerEventInit) -> Int? {
  pointer_event_init_get_button_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::buttons(self : PointerEventInit) -> UInt? {
  pointer_event_init_get_buttons_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::related_target(
  self : PointerEventInit,
) -> EventTarget? {
  pointer_event_init_get_related_target_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn PointerEventInit::pointer_id(self : PointerEventInit) -> Int? {
  pointer_event_init_get_pointer_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::width(self : PointerEventInit) -> Double? {
  pointer_event_init_get_width_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::height(self : PointerEventInit) -> Double? {
  pointer_event_init_get_height_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::pressure(self : PointerEventInit) -> Float? {
  pointer_event_init_get_pressure_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::tangential_pressure(self : PointerEventInit) -> Float? {
  pointer_event_init_get_tangential_pressure_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::tilt_x(self : PointerEventInit) -> Int? {
  pointer_event_init_get_tilt_x_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::tilt_y(self : PointerEventInit) -> Int? {
  pointer_event_init_get_tilt_y_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::twist(self : PointerEventInit) -> Int? {
  pointer_event_init_get_twist_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::altitude_angle(self : PointerEventInit) -> Double? {
  pointer_event_init_get_altitude_angle_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::azimuth_angle(self : PointerEventInit) -> Double? {
  pointer_event_init_get_azimuth_angle_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::pointer_type(self : PointerEventInit) -> String? {
  pointer_event_init_get_pointer_type_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::is_primary(self : PointerEventInit) -> Bool? {
  pointer_event_init_get_is_primary_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::persistent_device_id(self : PointerEventInit) -> Int? {
  pointer_event_init_get_persistent_device_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PointerEventInit::coalesced_events(
  self : PointerEventInit,
) -> Array[PointerEvent]? {
  pointer_event_init_get_coalesced_events_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn PointerEventInit::predicted_events(
  self : PointerEventInit,
) -> Array[PointerEvent]? {
  pointer_event_init_get_predicted_events_ffi(TJsValue::to_js(self)).to_option()
}
