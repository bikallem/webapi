// Do not edit. This file is generated.
// MoonBit type: KeyboardEvent
// Specifications: uievents.idl

/// [KeyboardEvent](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent)
#external
pub type KeyboardEvent

pub impl TJsValue for KeyboardEvent with to_js(self: KeyboardEvent) -> JsValue = "%identity"

pub fn[T: TKeyboardEvent] KeyboardEvent::into(self : KeyboardEvent) -> T = "%identity"

pub impl TKeyboardEvent for KeyboardEvent

pub impl TUIEvent for KeyboardEvent

pub impl TEvent for KeyboardEvent

pub fn KeyboardEvent::new(type_ : String, 
event_init_dict? : KeyboardEventInit = KeyboardEventInit::empty()) -> KeyboardEvent {
  keyboard_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

pub const KEYBOARD_EVENT_DOM_KEY_LOCATION_STANDARD: UInt = 0x00

pub const KEYBOARD_EVENT_DOM_KEY_LOCATION_LEFT: UInt = 0x01

pub const KEYBOARD_EVENT_DOM_KEY_LOCATION_RIGHT: UInt = 0x02

pub const KEYBOARD_EVENT_DOM_KEY_LOCATION_NUMPAD: UInt = 0x03

/// [KeyboardEvent](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent) interface.
pub trait TKeyboardEvent: TUIEvent {
  key(self : Self) -> String = _
  code(self : Self) -> String = _
  location(self : Self) -> UInt = _
  ctrl_key(self : Self) -> Bool = _
  shift_key(self : Self) -> Bool = _
  alt_key(self : Self) -> Bool = _
  meta_key(self : Self) -> Bool = _
  repeat(self : Self) -> Bool = _
  is_composing(self : Self) -> Bool = _
  get_modifier_state(self : Self, key_arg : String) -> Bool = _
  init_keyboard_event(self : Self, type_arg : String, bubbles_arg? : Bool, cancelable_arg? : Bool, view_arg? : &TWindow, key_arg? : String, location_arg? : UInt, ctrl_key? : Bool, alt_key? : Bool, shift_key? : Bool, meta_key? : Bool) -> Unit = _
  char_code(self : Self) -> UInt = _
  key_code(self : Self) -> UInt = _
}

/// [KeyboardEvent.key](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/key)
impl TKeyboardEvent with key(self : Self) -> String {
  keyboard_event_key_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.code](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/code)
impl TKeyboardEvent with code(self : Self) -> String {
  keyboard_event_code_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.location](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/location)
impl TKeyboardEvent with location(self : Self) -> UInt {
  keyboard_event_location_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.ctrlKey](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/ctrlKey)
impl TKeyboardEvent with ctrl_key(self : Self) -> Bool {
  keyboard_event_ctrl_key_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.shiftKey](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/shiftKey)
impl TKeyboardEvent with shift_key(self : Self) -> Bool {
  keyboard_event_shift_key_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.altKey](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/altKey)
impl TKeyboardEvent with alt_key(self : Self) -> Bool {
  keyboard_event_alt_key_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.metaKey](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/metaKey)
impl TKeyboardEvent with meta_key(self : Self) -> Bool {
  keyboard_event_meta_key_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.repeat](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/repeat)
impl TKeyboardEvent with repeat(self : Self) -> Bool {
  keyboard_event_repeat_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.isComposing](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/isComposing)
impl TKeyboardEvent with is_composing(self : Self) -> Bool {
  keyboard_event_is_composing_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.getModifierState](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/getModifierState)
impl TKeyboardEvent with get_modifier_state(self : Self, 
key_arg : String) -> Bool {
  keyboard_event_get_modifier_state_ffi(TJsValue::to_js(self), TJsValue::to_js(key_arg))
}

/// [KeyboardEvent.initKeyboardEvent](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/initKeyboardEvent)
impl TKeyboardEvent with init_keyboard_event(self : Self, 
type_arg : String, 
bubbles_arg? : Bool = false, 
cancelable_arg? : Bool = false, 
view_arg? : &TWindow = JsValue::null(), 
key_arg? : String = "", 
location_arg? : UInt = (0: UInt), 
ctrl_key? : Bool = false, 
alt_key? : Bool = false, 
shift_key? : Bool = false, 
meta_key? : Bool = false) -> Unit {
  keyboard_event_init_keyboard_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_arg), TJsValue::to_js(bubbles_arg), TJsValue::to_js(cancelable_arg), TJsValue::to_js(view_arg), TJsValue::to_js(key_arg), TJsValue::to_js(location_arg), TJsValue::to_js(ctrl_key), TJsValue::to_js(alt_key), TJsValue::to_js(shift_key), TJsValue::to_js(meta_key))
}

/// [KeyboardEvent.charCode](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/charCode)
impl TKeyboardEvent with char_code(self : Self) -> UInt {
  keyboard_event_char_code_ffi(TJsValue::to_js(self))
}

/// [KeyboardEvent.keyCode](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/keyCode)
impl TKeyboardEvent with key_code(self : Self) -> UInt {
  keyboard_event_key_code_ffi(TJsValue::to_js(self))
}