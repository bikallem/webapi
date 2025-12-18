// Auto-generated MoonBit bindings for KeyboardEventInit dictionary
// Do not edit manually

#external
pub type KeyboardEventInit

pub impl TJsValue for KeyboardEventInit with to_js(self: KeyboardEventInit) -> JsValue = "%identity"


fn keyboard_event_init_ffi(ctrl_key : JsValue, shift_key : JsValue, alt_key : JsValue, meta_key : JsValue, modifier_alt_graph : JsValue, modifier_caps_lock : JsValue, modifier_fn : JsValue, modifier_fn_lock : JsValue, modifier_hyper : JsValue, modifier_num_lock : JsValue, modifier_scroll_lock : JsValue, modifier_super : JsValue, modifier_symbol : JsValue, modifier_symbol_lock : JsValue, key : JsValue, code : JsValue, location : JsValue, repeat : JsValue, is_composing : JsValue, char_code : JsValue, key_code : JsValue) -> KeyboardEventInit = "webapi_KeyboardEventInit" "new"


pub fn KeyboardEventInit::new(
  ctrl_key? : Bool? : Bool = false,
  shift_key? : Bool? : Bool = false,
  alt_key? : Bool? : Bool = false,
  meta_key? : Bool? : Bool = false,
  modifier_alt_graph? : Bool? : Bool = false,
  modifier_caps_lock? : Bool? : Bool = false,
  modifier_fn? : Bool? : Bool = false,
  modifier_fn_lock? : Bool? : Bool = false,
  modifier_hyper? : Bool? : Bool = false,
  modifier_num_lock? : Bool? : Bool = false,
  modifier_scroll_lock? : Bool? : Bool = false,
  modifier_super? : Bool? : Bool = false,
  modifier_symbol? : Bool? : Bool = false,
  modifier_symbol_lock? : Bool? : Bool = false,
  key? : String? : String = "",
  code? : String? : String = "",
  location? : UInt? : UInt = 0,
  repeat? : Bool? : Bool = false,
  is_composing? : Bool? : Bool = false,
  char_code? : UInt? : UInt = 0,
  key_code? : UInt? : UInt = 0) -> KeyboardEventInit {
    keyboard_event_init_ffi(
      TJsValue::to_js(ctrl_key)
     ,TJsValue::to_js(shift_key)
     ,TJsValue::to_js(alt_key)
     ,TJsValue::to_js(meta_key)
     ,TJsValue::to_js(modifier_alt_graph)
     ,TJsValue::to_js(modifier_caps_lock)
     ,TJsValue::to_js(modifier_fn)
     ,TJsValue::to_js(modifier_fn_lock)
     ,TJsValue::to_js(modifier_hyper)
     ,TJsValue::to_js(modifier_num_lock)
     ,TJsValue::to_js(modifier_scroll_lock)
     ,TJsValue::to_js(modifier_super)
     ,TJsValue::to_js(modifier_symbol)
     ,TJsValue::to_js(modifier_symbol_lock)
     ,TJsValue::to_js(key)
     ,TJsValue::to_js(code)
     ,TJsValue::to_js(location)
     ,TJsValue::to_js(repeat)
     ,TJsValue::to_js(is_composing)
     ,TJsValue::to_js(char_code)
     ,TJsValue::to_js(key_code)
    )
}


pub fn KeyboardEventInit::empty() -> KeyboardEventInit = "webapi_Dictionary" "empty"