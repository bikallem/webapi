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
  delta_x? : Double = (0.0 : Double),
  delta_y? : Double = (0.0 : Double),
  delta_z? : Double = (0.0 : Double),
  delta_mode? : UInt = (0 : UInt),
) -> WheelEventInit {
  wheel_event_init_ffi(
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
    TJsValue::to_js(delta_x),
    TJsValue::to_js(delta_y),
    TJsValue::to_js(delta_z),
    TJsValue::to_js(delta_mode),
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
