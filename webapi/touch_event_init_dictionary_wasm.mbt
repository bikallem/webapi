///|
fn touch_event_init_ffi(
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
  touches : JsValue,
  target_touches : JsValue,
  changed_touches : JsValue,
) -> TouchEventInit = "webapi_TouchEventInit" "new"

///|
fn touch_event_init_empty_ffi() -> TouchEventInit = "webapi_Dictionary" "empty"

///|
fn touch_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_bubbles"

///|
fn touch_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_cancelable"

///|
fn touch_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_composed"

///|
fn touch_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_view"

///|
fn touch_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_detail"

///|
fn touch_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_which"

///|
fn touch_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_ctrlKey"

///|
fn touch_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_shiftKey"

///|
fn touch_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_altKey"

///|
fn touch_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_metaKey"

///|
fn touch_event_init_get_modifier_alt_graph_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierAltGraph"

///|
fn touch_event_init_get_modifier_caps_lock_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierCapsLock"

///|
fn touch_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierFn"

///|
fn touch_event_init_get_modifier_fn_lock_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierFnLock"

///|
fn touch_event_init_get_modifier_hyper_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierHyper"

///|
fn touch_event_init_get_modifier_num_lock_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierNumLock"

///|
fn touch_event_init_get_modifier_scroll_lock_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierScrollLock"

///|
fn touch_event_init_get_modifier_super_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierSuper"

///|
fn touch_event_init_get_modifier_symbol_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierSymbol"

///|
fn touch_event_init_get_modifier_symbol_lock_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_modifierSymbolLock"

///|
fn touch_event_init_get_touches_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_touches"

///|
fn touch_event_init_get_target_touches_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_targetTouches"

///|
fn touch_event_init_get_changed_touches_ffi(obj : JsValue) -> JsValue = "webapi_TouchEventInit" "get_changedTouches"
