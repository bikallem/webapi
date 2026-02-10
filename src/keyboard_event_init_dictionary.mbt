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
pub fn KeyboardEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow = JsValue::null(),
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
    TJsValue::to_js(view),
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
