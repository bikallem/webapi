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
  key? : String = "",
  code? : String = "",
  location? : UInt = (0 : UInt),
  repeat? : Bool = false,
  is_composing? : Bool = false,
  char_code? : UInt = (0 : UInt),
  key_code? : UInt = (0 : UInt),
) -> KeyboardEventInit {
  keyboard_event_init_ffi(
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
    TJsValue::to_js(key),
    TJsValue::to_js(code),
    TJsValue::to_js(location),
    TJsValue::to_js(repeat),
    TJsValue::to_js(is_composing),
    TJsValue::to_js(char_code),
    TJsValue::to_js(key_code),
  )
}

///|
pub fn KeyboardEventInit::empty() -> KeyboardEventInit {
  keyboard_event_init_empty_ffi()
}

///|
pub fn KeyboardEventInit::bubbles(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::cancelable(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::composed(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::view(self : KeyboardEventInit) -> Window? {
  let result = keyboard_event_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyboardEventInit::detail(self : KeyboardEventInit) -> Int? {
  let result = keyboard_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::which(self : KeyboardEventInit) -> UInt? {
  let result = keyboard_event_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::ctrl_key(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_ctrl_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::shift_key(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_shift_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::alt_key(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_alt_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::meta_key(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_meta_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_alt_graph(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_alt_graph_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_caps_lock(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_caps_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_fn(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_fn_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_fn_lock(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_fn_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_hyper(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_hyper_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_num_lock(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_num_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_scroll_lock(
  self : KeyboardEventInit,
) -> Bool? {
  let result = keyboard_event_init_get_modifier_scroll_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_super(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_super_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_symbol(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_modifier_symbol_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::modifier_symbol_lock(
  self : KeyboardEventInit,
) -> Bool? {
  let result = keyboard_event_init_get_modifier_symbol_lock_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::key(self : KeyboardEventInit) -> String? {
  let result = keyboard_event_init_get_key_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::code(self : KeyboardEventInit) -> String? {
  let result = keyboard_event_init_get_code_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::location(self : KeyboardEventInit) -> UInt? {
  let result = keyboard_event_init_get_location_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::repeat(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_repeat_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::is_composing(self : KeyboardEventInit) -> Bool? {
  let result = keyboard_event_init_get_is_composing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::char_code(self : KeyboardEventInit) -> UInt? {
  let result = keyboard_event_init_get_char_code_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyboardEventInit::key_code(self : KeyboardEventInit) -> UInt? {
  let result = keyboard_event_init_get_key_code_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
