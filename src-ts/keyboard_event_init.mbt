// Auto-generated MoonBit bindings for KeyboardEventInit dictionary

// Do not edit manually

///|
#external
pub type KeyboardEventInit

///|
pub impl TJsValue for KeyboardEventInit with to_js(self : KeyboardEventInit) -> JsValue = "%identity"

///|
fn keyboard_event_init_ffi(key : JsValue, code : JsValue, location : JsValue, repeat : JsValue, is_composing : JsValue, char_code : JsValue, key_code : JsValue) -> KeyboardEventInit = "webapi_KeyboardEventInit" "new"

///|
pub fn KeyboardEventInit::new(
  key? : String = "",
  code? : String = "",
  location? : UInt = 0,
  repeat? : Bool = false,
  is_composing? : Bool = false,
  char_code? : UInt = 0,
  key_code? : UInt = 0
) -> KeyboardEventInit {
  keyboard_event_init_ffi(TJsValue::to_js(key), TJsValue::to_js(code), TJsValue::to_js(location), TJsValue::to_js(repeat), TJsValue::to_js(is_composing), TJsValue::to_js(char_code), TJsValue::to_js(key_code))
}

///|
pub fn KeyboardEventInit::empty() -> KeyboardEventInit = "webapi_Dictionary" "empty"