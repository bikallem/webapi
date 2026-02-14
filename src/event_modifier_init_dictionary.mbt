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
) -> EventModifierInit {
  event_modifier_init_ffi(
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
  )
}

///|
pub fn EventModifierInit::empty() -> EventModifierInit {
  event_modifier_init_empty_ffi()
}

///|
pub fn EventModifierInit::bubbles(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::cancelable(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::composed(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::view(self : EventModifierInit) -> Window? {
  let result = event_modifier_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn EventModifierInit::detail(self : EventModifierInit) -> Int? {
  let result = event_modifier_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::which(self : EventModifierInit) -> UInt? {
  let result = event_modifier_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::ctrl_key(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_ctrl_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::shift_key(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_shift_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::alt_key(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_alt_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::meta_key(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_meta_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_alt_graph(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_alt_graph_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_caps_lock(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_caps_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_fn(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_fn_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_fn_lock(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_fn_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_hyper(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_hyper_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_num_lock(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_num_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_scroll_lock(
  self : EventModifierInit,
) -> Bool? {
  let result = event_modifier_init_get_modifier_scroll_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_super(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_super_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_symbol(self : EventModifierInit) -> Bool? {
  let result = event_modifier_init_get_modifier_symbol_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventModifierInit::modifier_symbol_lock(
  self : EventModifierInit,
) -> Bool? {
  let result = event_modifier_init_get_modifier_symbol_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
