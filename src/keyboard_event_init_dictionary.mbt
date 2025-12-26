// Do not edit. This file is generated.
// MoonBit type: KeyboardEventInit
// Specifications: uievents.idl

///|
#external
pub type KeyboardEventInit

///|
pub impl TJsValue for KeyboardEventInit with to_js(self : KeyboardEventInit) -> JsValue = "%identity"

///|
extern "js" fn keyboard_event_init_ffi(
  ctrl_key : JsValue,
  shift_key : JsValue,
  alt_key : JsValue,
  meta_key : JsValue,
  modifier_alt_graph : JsValue,
  modifier_caps_lock : JsValue,
  modifier_fn : JsValue,
  modifier_fn_lock : JsValue,
  modifier_hyper : JsValue,
  modifier_num_lock : JsValue,
  modifier_scroll_lock : JsValue,
  modifier_super : JsValue,
  modifier_symbol : JsValue,
  modifier_symbol_lock : JsValue,
  key : JsValue,
  code : JsValue,
  location : JsValue,
  repeat : JsValue,
  is_composing : JsValue,
  char_code : JsValue,
  key_code : JsValue,
) -> KeyboardEventInit =
  #|(ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, key, code, location, repeat, isComposing, charCode, keyCode) => {
  #|  const obj = {};
  #|  if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
  #|  if (shiftKey !== undefined) obj.shiftKey = shiftKey;
  #|  if (altKey !== undefined) obj.altKey = altKey;
  #|  if (metaKey !== undefined) obj.metaKey = metaKey;
  #|  if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
  #|  if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
  #|  if (modifierFn !== undefined) obj.modifierFn = modifierFn;
  #|  if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
  #|  if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
  #|  if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
  #|  if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
  #|  if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
  #|  if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
  #|  if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
  #|  if (key !== undefined) obj.key = key;
  #|  if (code !== undefined) obj.code = code;
  #|  if (location !== undefined) obj.location = location;
  #|  if (repeat !== undefined) obj.repeat = repeat;
  #|  if (isComposing !== undefined) obj.isComposing = isComposing;
  #|  if (charCode !== undefined) obj.charCode = charCode;
  #|  if (keyCode !== undefined) obj.keyCode = keyCode;
  #|  return obj;
  #|}

///|
pub fn KeyboardEventInit::new(
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
extern "js" fn keyboard_event_init_empty_ffi() -> KeyboardEventInit = "() => {}"

///|
pub fn KeyboardEventInit::empty() -> KeyboardEventInit {
  keyboard_event_init_empty_ffi()
}
