///|
#external
pub type KeyboardEvent

///|
pub impl TJsValue for KeyboardEvent with to_js(self : KeyboardEvent) -> JsValue = "%identity"

///|
pub fn[T : TKeyboardEvent] KeyboardEvent::into(self : KeyboardEvent) -> T = "%identity"

///|
pub impl TKeyboardEvent for KeyboardEvent

///|
pub impl TUIEvent for KeyboardEvent

///|
pub impl TEvent for KeyboardEvent

///|
extern "js" fn keyboard_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> KeyboardEvent = "(type_, event_init_dict) => new KeyboardEvent(type_, event_init_dict)"

///|
pub fn KeyboardEvent::new(
  type_ : String,
  event_init_dict? : KeyboardEventInit = KeyboardEventInit::empty(),
) -> KeyboardEvent {
  keyboard_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TKeyboardEvent: TUIEvent {
  get_modifier_state(self : Self, key_arg : String) -> Bool = _
  init_keyboard_event(
    self : Self,
    type_arg : String,
    bubbles_arg? : Bool,
    cancelable_arg? : Bool,
    view_arg? : &TWindow,
    key_arg? : String,
    location_arg? : UInt,
    ctrl_key? : Bool,
    alt_key? : Bool,
    shift_key? : Bool,
    meta_key? : Bool,
  ) -> Unit = _
}

///|
extern "js" fn keyboard_event_get_modifier_state_ffi(
  obj : JsValue,
  key_arg : JsValue,
) -> Bool = "(obj, key_arg) => obj.getModifierState(obj, key_arg)"

///|
impl TKeyboardEvent with get_modifier_state(self : Self, key_arg : String) -> Bool {
  keyboard_event_get_modifier_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key_arg),
  )
}

///|
extern "js" fn keyboard_event_init_keyboard_event_ffi(
  obj : JsValue,
  type_arg : JsValue,
  bubbles_arg : JsValue,
  cancelable_arg : JsValue,
  view_arg : JsValue,
  key_arg : JsValue,
  location_arg : JsValue,
  ctrl_key : JsValue,
  alt_key : JsValue,
  shift_key : JsValue,
  meta_key : JsValue,
) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key) => obj.initKeyboardEvent(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key)"

///|
impl TKeyboardEvent with init_keyboard_event(
  self : Self,
  type_arg : String,
  bubbles_arg? : Bool = false,
  cancelable_arg? : Bool = false,
  view_arg? : &TWindow = JsValue::null(),
  key_arg? : String = "",
  location_arg? : UInt = 0,
  ctrl_key? : Bool = false,
  alt_key? : Bool = false,
  shift_key? : Bool = false,
  meta_key? : Bool = false,
) -> Unit {
  keyboard_event_init_keyboard_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_arg),
    TJsValue::to_js(bubbles_arg),
    TJsValue::to_js(cancelable_arg),
    TJsValue::to_js(view_arg),
    TJsValue::to_js(key_arg),
    TJsValue::to_js(location_arg),
    TJsValue::to_js(ctrl_key),
    TJsValue::to_js(alt_key),
    TJsValue::to_js(shift_key),
    TJsValue::to_js(meta_key),
  )
}
