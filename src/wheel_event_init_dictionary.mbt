// Do not edit. This file is generated.
// MoonBit type: WheelEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [WheelEventInit](https://developer.mozilla.org/en-US/docs/Web/API/WheelEventInit)
#external
pub type WheelEventInit

///|
pub impl TJsValue for WheelEventInit with to_js(self : WheelEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for WheelEventInit with from_js_any(value : JsAny) -> WheelEventInit = "%identity"

///|
pub fn WheelEventInit::new(
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
  delta_x? : Double,
  delta_y? : Double,
  delta_z? : Double,
  delta_mode? : UInt,
) -> WheelEventInit {
  wheel_event_init_ffi(
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
    opt_to_js(delta_x),
    opt_to_js(delta_y),
    opt_to_js(delta_z),
    opt_to_js(delta_mode),
  )
}

///|
pub fn WheelEventInit::empty() -> WheelEventInit {
  wheel_event_init_empty_ffi()
}

///|
pub fn WheelEventInit::bubbles(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::cancelable(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::composed(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::view(self : WheelEventInit) -> Window? {
  let result = wheel_event_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn WheelEventInit::detail(self : WheelEventInit) -> Int? {
  let result = wheel_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::which(self : WheelEventInit) -> UInt? {
  let result = wheel_event_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::ctrl_key(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_ctrl_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::shift_key(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_shift_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::alt_key(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_alt_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::meta_key(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_meta_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_alt_graph(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_alt_graph_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_caps_lock(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_caps_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_fn(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_fn_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_fn_lock(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_fn_lock_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_hyper(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_num_lock(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_num_lock_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_scroll_lock(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_scroll_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_super(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_super_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_symbol(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_symbol_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::modifier_symbol_lock(self : WheelEventInit) -> Bool? {
  let result = wheel_event_init_get_modifier_symbol_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::screen_x(self : WheelEventInit) -> Int? {
  let result = wheel_event_init_get_screen_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::screen_y(self : WheelEventInit) -> Int? {
  let result = wheel_event_init_get_screen_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::client_x(self : WheelEventInit) -> Int? {
  let result = wheel_event_init_get_client_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::client_y(self : WheelEventInit) -> Int? {
  let result = wheel_event_init_get_client_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::button(self : WheelEventInit) -> Int? {
  let result = wheel_event_init_get_button_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::buttons(self : WheelEventInit) -> UInt? {
  let result = wheel_event_init_get_buttons_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::related_target(self : WheelEventInit) -> EventTarget? {
  let result = wheel_event_init_get_related_target_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn WheelEventInit::delta_x(self : WheelEventInit) -> Double? {
  let result = wheel_event_init_get_delta_x_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::delta_y(self : WheelEventInit) -> Double? {
  let result = wheel_event_init_get_delta_y_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::delta_z(self : WheelEventInit) -> Double? {
  let result = wheel_event_init_get_delta_z_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn WheelEventInit::delta_mode(self : WheelEventInit) -> UInt? {
  let result = wheel_event_init_get_delta_mode_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
