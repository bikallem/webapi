///|
fn keyboard_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> KeyboardEvent = "webapi_KeyboardEvent" "new"

///|
fn keyboard_event_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_key"

///|
fn keyboard_event_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_code"

///|
fn keyboard_event_location_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_location"

///|
fn keyboard_event_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_ctrlKey"

///|
fn keyboard_event_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_shiftKey"

///|
fn keyboard_event_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_altKey"

///|
fn keyboard_event_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_metaKey"

///|
fn keyboard_event_repeat_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_repeat"

///|
fn keyboard_event_is_composing_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_isComposing"

///|
fn keyboard_event_get_modifier_state_ffi(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "webapi_KeyboardEvent" "getModifierState"

///|
fn keyboard_event_init_keyboard_event_ffi(
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
) -> Unit = "webapi_KeyboardEvent" "initKeyboardEvent"

///|
fn keyboard_event_char_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_charCode"

///|
fn keyboard_event_key_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEvent" "get_keyCode"
