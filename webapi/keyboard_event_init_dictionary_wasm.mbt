///|
fn keyboard_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
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
) -> KeyboardEventInit = "webapi_KeyboardEventInit" "new"

///|
fn keyboard_event_init_empty_ffi() -> KeyboardEventInit = "webapi_Dictionary" "empty"

///|
fn keyboard_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_bubbles"

///|
fn keyboard_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_cancelable"

///|
fn keyboard_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_composed"

///|
fn keyboard_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_view"

///|
fn keyboard_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_detail"

///|
fn keyboard_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_which"

///|
fn keyboard_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_ctrlKey"

///|
fn keyboard_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_shiftKey"

///|
fn keyboard_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_altKey"

///|
fn keyboard_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_metaKey"

///|
fn keyboard_event_init_get_modifier_alt_graph_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierAltGraph"

///|
fn keyboard_event_init_get_modifier_caps_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierCapsLock"

///|
fn keyboard_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierFn"

///|
fn keyboard_event_init_get_modifier_fn_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierFnLock"

///|
fn keyboard_event_init_get_modifier_hyper_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierHyper"

///|
fn keyboard_event_init_get_modifier_num_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierNumLock"

///|
fn keyboard_event_init_get_modifier_scroll_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierScrollLock"

///|
fn keyboard_event_init_get_modifier_super_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierSuper"

///|
fn keyboard_event_init_get_modifier_symbol_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierSymbol"

///|
fn keyboard_event_init_get_modifier_symbol_lock_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_modifierSymbolLock"

///|
fn keyboard_event_init_get_key_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_key"

///|
fn keyboard_event_init_get_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_code"

///|
fn keyboard_event_init_get_location_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_location"

///|
fn keyboard_event_init_get_repeat_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_repeat"

///|
fn keyboard_event_init_get_is_composing_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_isComposing"

///|
fn keyboard_event_init_get_char_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_charCode"

///|
fn keyboard_event_init_get_key_code_ffi(obj : JsValue) -> JsValue = "webapi_KeyboardEventInit" "get_keyCode"
