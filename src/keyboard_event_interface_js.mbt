///|
extern "js" fn keyboard_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> KeyboardEvent = "(type_, event_init_dict) => new KeyboardEvent(type_, event_init_dict)"

///|
extern "js" fn keyboard_event_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
extern "js" fn keyboard_event_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
extern "js" fn keyboard_event_location_ffi(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
extern "js" fn keyboard_event_ctrl_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
extern "js" fn keyboard_event_shift_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
extern "js" fn keyboard_event_alt_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
extern "js" fn keyboard_event_meta_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
extern "js" fn keyboard_event_repeat_ffi(obj : JsValue) -> JsValue = "(obj) => obj.repeat"

///|
extern "js" fn keyboard_event_is_composing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.isComposing"

///|
extern "js" fn keyboard_event_get_modifier_state_ffi(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "(obj, key_arg) => obj.getModifierState(key_arg)"

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
) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key) => obj.initKeyboardEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key)"

///|
extern "js" fn keyboard_event_char_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.charCode"

///|
extern "js" fn keyboard_event_key_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.keyCode"
