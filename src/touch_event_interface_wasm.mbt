///|
fn touch_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> TouchEvent = "webapi_TouchEvent" "new"

///|
fn touch_event_touches_ffi(obj : JsValue) -> TouchList = "webapi_TouchEvent" "get_touches"

///|
fn touch_event_target_touches_ffi(obj : JsValue) -> TouchList = "webapi_TouchEvent" "get_targetTouches"

///|
fn touch_event_changed_touches_ffi(obj : JsValue) -> TouchList = "webapi_TouchEvent" "get_changedTouches"

///|
fn touch_event_alt_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_altKey"

///|
fn touch_event_meta_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_metaKey"

///|
fn touch_event_ctrl_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_ctrlKey"

///|
fn touch_event_shift_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_shiftKey"

///|
fn touch_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> Bool = "webapi_TouchEvent" "getModifierState"
