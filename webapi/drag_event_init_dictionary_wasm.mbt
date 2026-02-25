///|
fn drag_event_init_ffi(
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
  data_transfer : JsValue,
) -> DragEventInit = "webapi_DragEventInit" "new"

///|
fn drag_event_init_empty_ffi() -> DragEventInit = "webapi_Dictionary" "empty"

///|
fn drag_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_bubbles"

///|
fn drag_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_cancelable"

///|
fn drag_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_composed"

///|
fn drag_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_view"

///|
fn drag_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_detail"

///|
fn drag_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_which"

///|
fn drag_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_ctrlKey"

///|
fn drag_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_shiftKey"

///|
fn drag_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_altKey"

///|
fn drag_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_metaKey"

///|
fn drag_event_init_get_modifier_alt_graph_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierAltGraph"

///|
fn drag_event_init_get_modifier_caps_lock_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierCapsLock"

///|
fn drag_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierFn"

///|
fn drag_event_init_get_modifier_fn_lock_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierFnLock"

///|
fn drag_event_init_get_modifier_hyper_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierHyper"

///|
fn drag_event_init_get_modifier_num_lock_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierNumLock"

///|
fn drag_event_init_get_modifier_scroll_lock_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierScrollLock"

///|
fn drag_event_init_get_modifier_super_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierSuper"

///|
fn drag_event_init_get_modifier_symbol_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierSymbol"

///|
fn drag_event_init_get_modifier_symbol_lock_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_modifierSymbolLock"

///|
fn drag_event_init_get_screen_x_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_screenX"

///|
fn drag_event_init_get_screen_y_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_screenY"

///|
fn drag_event_init_get_client_x_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_clientX"

///|
fn drag_event_init_get_client_y_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_clientY"

///|
fn drag_event_init_get_button_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_button"

///|
fn drag_event_init_get_buttons_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_buttons"

///|
fn drag_event_init_get_related_target_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_relatedTarget"

///|
fn drag_event_init_get_data_transfer_ffi(obj : JsValue) -> JsValue = "webapi_DragEventInit" "get_dataTransfer"
