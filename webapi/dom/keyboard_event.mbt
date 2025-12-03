// Auto-generated MoonBit bindings for KeyboardEvent

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface KeyboardEvent : UIEvent {
//   constructor(DOMString type, optional KeyboardEventInit eventInitDict = {});
//   // KeyLocationCode
//   const unsigned long DOM_KEY_LOCATION_STANDARD = 0x00;
//   const unsigned long DOM_KEY_LOCATION_LEFT = 0x01;
//   const unsigned long DOM_KEY_LOCATION_RIGHT = 0x02;
//   const unsigned long DOM_KEY_LOCATION_NUMPAD = 0x03;
// 
//   readonly attribute DOMString key;
//   readonly attribute DOMString code;
//   readonly attribute unsigned long location;
// 
//   readonly attribute boolean ctrlKey;
//   readonly attribute boolean shiftKey;
//   readonly attribute boolean altKey;
//   readonly attribute boolean metaKey;
// 
//   readonly attribute boolean repeat;
//   readonly attribute boolean isComposing;
// 
//   boolean getModifierState(DOMString keyArg);
// };
// 
// partial interface KeyboardEvent {
//   // Originally introduced (and deprecated) in this specification
//   undefined initKeyboardEvent(DOMString typeArg,
//     optional boolean bubblesArg = false,
//     optional boolean cancelableArg = false,
//     optional Window? viewArg = null,
//     optional DOMString keyArg = "",
//     optional unsigned long locationArg = 0,
//     optional boolean ctrlKey = false,
//     optional boolean altKey = false,
//     optional boolean shiftKey = false,
//     optional boolean metaKey = false);
// };
// 
// partial interface KeyboardEvent {
//   // The following support legacy user agents
//   readonly attribute unsigned long charCode;
//   readonly attribute unsigned long keyCode;
// };

///|
#external
pub type KeyboardEvent

///|
pub trait TKeyboardEvent: TJsValue + TUIEvent {
  key(self : Self) -> String = _
  code(self : Self) -> String = _
  location(self : Self) -> Int = _
  ctrl_key(self : Self) -> Bool = _
  shift_key(self : Self) -> Bool = _
  alt_key(self : Self) -> Bool = _
  meta_key(self : Self) -> Bool = _
  repeat(self : Self) -> Bool = _
  is_composing(self : Self) -> Bool = _
  char_code(self : Self) -> Int = _
  key_code(self : Self) -> Int = _
  get_modifier_state(self : Self, key_arg : String) -> Bool = _
  init_keyboard_event(self : Self, type_arg : String, bubbles_arg? : Bool, cancelable_arg? : Bool, view_arg? : Window, key_arg? : String, location_arg? : Int, ctrl_key? : Bool, alt_key? : Bool, shift_key? : Bool, meta_key? : Bool) -> Unit = _
}

///|
pub impl TEvent for KeyboardEvent

///|
pub impl TUIEvent for KeyboardEvent

///|
pub impl TKeyboardEvent for KeyboardEvent

///|
pub impl TJsValue for KeyboardEvent with to_js(self : KeyboardEvent) -> JsValue = "%identity"

///|
fn keyboard_event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> KeyboardEvent = "webapi_KeyboardEvent" "new"

///|
pub fn KeyboardEvent::new(type_ : String, event_init_dict? : KeyboardEventInit = default_keyboard_event_init()) -> KeyboardEvent {
  keyboard_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn keyboard_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> JsValue = "webapi_KeyboardEvent" "getModifierState"

///|
impl TKeyboardEvent with get_modifier_state(self : Self, key_arg : String) -> Bool {
  keyboard_event_get_modifier_state_ffi(TJsValue::to_js(self), TJsValue::to_js(key_arg)).unsafe_cast()
}

///|
fn keyboard_event_init_keyboard_event_ffi(obj : JsValue, type_arg : JsValue, bubbles_arg : JsValue, cancelable_arg : JsValue, view_arg : JsValue, key_arg : JsValue, location_arg : JsValue, ctrl_key : JsValue, alt_key : JsValue, shift_key : JsValue, meta_key : JsValue) -> Unit = "webapi_KeyboardEvent" "initKeyboardEvent"

///|
impl TKeyboardEvent with init_keyboard_event(self : Self, type_arg : String, bubbles_arg? : Bool, cancelable_arg? : Bool, view_arg? : Window, key_arg? : String, location_arg? : Int, ctrl_key? : Bool, alt_key? : Bool, shift_key? : Bool, meta_key? : Bool) -> Unit {
  let bubbles_arg_js = opt_to_js(bubbles_arg)
  let cancelable_arg_js = opt_to_js(cancelable_arg)
  let view_arg_js = opt_to_js(view_arg)
  let key_arg_js = opt_to_js(key_arg)
  let location_arg_js = opt_to_js(location_arg)
  let ctrl_key_js = opt_to_js(ctrl_key)
  let alt_key_js = opt_to_js(alt_key)
  let shift_key_js = opt_to_js(shift_key)
  let meta_key_js = opt_to_js(meta_key)
  keyboard_event_init_keyboard_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_arg), bubbles_arg_js, cancelable_arg_js, view_arg_js, key_arg_js, location_arg_js, ctrl_key_js, alt_key_js, shift_key_js, meta_key_js)
}

///|
fn keyboard_event_key_ffi(obj : JsValue) -> String = "webapi_KeyboardEvent" "key"

///|
impl TKeyboardEvent with key(self : Self) -> String {
  keyboard_event_key_ffi(self.to_js())
}

///|
fn keyboard_event_code_ffi(obj : JsValue) -> String = "webapi_KeyboardEvent" "code"

///|
impl TKeyboardEvent with code(self : Self) -> String {
  keyboard_event_code_ffi(self.to_js())
}

///|
fn keyboard_event_location_ffi(obj : JsValue) -> Int = "webapi_KeyboardEvent" "location"

///|
impl TKeyboardEvent with location(self : Self) -> Int {
  keyboard_event_location_ffi(self.to_js())
}

///|
fn keyboard_event_ctrl_key_ffi(obj : JsValue) -> Bool = "webapi_KeyboardEvent" "ctrlKey"

///|
impl TKeyboardEvent with ctrl_key(self : Self) -> Bool {
  keyboard_event_ctrl_key_ffi(self.to_js())
}

///|
fn keyboard_event_shift_key_ffi(obj : JsValue) -> Bool = "webapi_KeyboardEvent" "shiftKey"

///|
impl TKeyboardEvent with shift_key(self : Self) -> Bool {
  keyboard_event_shift_key_ffi(self.to_js())
}

///|
fn keyboard_event_alt_key_ffi(obj : JsValue) -> Bool = "webapi_KeyboardEvent" "altKey"

///|
impl TKeyboardEvent with alt_key(self : Self) -> Bool {
  keyboard_event_alt_key_ffi(self.to_js())
}

///|
fn keyboard_event_meta_key_ffi(obj : JsValue) -> Bool = "webapi_KeyboardEvent" "metaKey"

///|
impl TKeyboardEvent with meta_key(self : Self) -> Bool {
  keyboard_event_meta_key_ffi(self.to_js())
}

///|
fn keyboard_event_repeat_ffi(obj : JsValue) -> Bool = "webapi_KeyboardEvent" "repeat"

///|
impl TKeyboardEvent with repeat(self : Self) -> Bool {
  keyboard_event_repeat_ffi(self.to_js())
}

///|
fn keyboard_event_is_composing_ffi(obj : JsValue) -> Bool = "webapi_KeyboardEvent" "isComposing"

///|
impl TKeyboardEvent with is_composing(self : Self) -> Bool {
  keyboard_event_is_composing_ffi(self.to_js())
}

///|
fn keyboard_event_char_code_ffi(obj : JsValue) -> Int = "webapi_KeyboardEvent" "charCode"

///|
impl TKeyboardEvent with char_code(self : Self) -> Int {
  keyboard_event_char_code_ffi(self.to_js())
}

///|
fn keyboard_event_key_code_ffi(obj : JsValue) -> Int = "webapi_KeyboardEvent" "keyCode"

///|
impl TKeyboardEvent with key_code(self : Self) -> Int {
  keyboard_event_key_code_ffi(self.to_js())
}