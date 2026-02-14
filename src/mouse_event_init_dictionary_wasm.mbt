///|
fn mouse_event_init_ffi(
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
  screen_x : JsValue,
  screen_y : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  button : JsValue,
  buttons : JsValue,
  related_target : JsValue,
) -> MouseEventInit = "webapi_MouseEventInit" "new"

///|
fn mouse_event_init_empty_ffi() -> MouseEventInit = "webapi_Dictionary" "empty"

///|
fn mouse_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_bubbles"

///|
fn mouse_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_cancelable"

///|
fn mouse_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_composed"

///|
fn mouse_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_view"

///|
fn mouse_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_detail"

///|
fn mouse_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_which"

///|
fn mouse_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_ctrlKey"

///|
fn mouse_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_shiftKey"

///|
fn mouse_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_altKey"

///|
fn mouse_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_metaKey"

///|
fn mouse_event_init_get_modifier_alt_graph_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierAltGraph"

///|
fn mouse_event_init_get_modifier_caps_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierCapsLock"

///|
fn mouse_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierFn"

///|
fn mouse_event_init_get_modifier_fn_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierFnLock"

///|
fn mouse_event_init_get_modifier_hyper_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierHyper"

///|
fn mouse_event_init_get_modifier_num_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierNumLock"

///|
fn mouse_event_init_get_modifier_scroll_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierScrollLock"

///|
fn mouse_event_init_get_modifier_super_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierSuper"

///|
fn mouse_event_init_get_modifier_symbol_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierSymbol"

///|
fn mouse_event_init_get_modifier_symbol_lock_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_modifierSymbolLock"

///|
fn mouse_event_init_get_screen_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_screenX"

///|
fn mouse_event_init_get_screen_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_screenY"

///|
fn mouse_event_init_get_client_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_clientX"

///|
fn mouse_event_init_get_client_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_clientY"

///|
fn mouse_event_init_get_button_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_button"

///|
fn mouse_event_init_get_buttons_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_buttons"

///|
fn mouse_event_init_get_related_target_ffi(obj : JsValue) -> JsValue = "webapi_MouseEventInit" "get_relatedTarget"
