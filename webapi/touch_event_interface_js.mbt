///|
extern "js" fn touch_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> TouchEvent = "(type_, event_init_dict) => new TouchEvent(type_, event_init_dict)"

///|
extern "js" fn touch_event_touches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.touches"

///|
fn touch_event_touches_ffi(obj : JsValue) -> TouchList {
  touch_event_touches_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_event_target_touches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.targetTouches"

///|
fn touch_event_target_touches_ffi(obj : JsValue) -> TouchList {
  touch_event_target_touches_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_event_changed_touches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.changedTouches"

///|
fn touch_event_changed_touches_ffi(obj : JsValue) -> TouchList {
  touch_event_changed_touches_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_event_alt_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
fn touch_event_alt_key_ffi(obj : JsValue) -> Bool {
  touch_event_alt_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_event_meta_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
fn touch_event_meta_key_ffi(obj : JsValue) -> Bool {
  touch_event_meta_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_event_ctrl_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
fn touch_event_ctrl_key_ffi(obj : JsValue) -> Bool {
  touch_event_ctrl_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_event_shift_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
fn touch_event_shift_key_ffi(obj : JsValue) -> Bool {
  touch_event_shift_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn touch_event_get_modifier_state_ffi_js(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "(obj, key_arg) => obj.getModifierState(key_arg)"

///|
fn touch_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> Bool {
  touch_event_get_modifier_state_ffi_js(obj, key_arg).unsafe_cast()
}
