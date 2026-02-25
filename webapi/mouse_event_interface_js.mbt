///|
extern "js" fn mouse_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MouseEvent = "(type_, event_init_dict) => new MouseEvent(type_, event_init_dict)"

///|
extern "js" fn mouse_event_screen_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenX"

///|
fn mouse_event_screen_x_ffi(obj : JsValue) -> Int {
  mouse_event_screen_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_screen_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenY"

///|
fn mouse_event_screen_y_ffi(obj : JsValue) -> Int {
  mouse_event_screen_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_client_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientX"

///|
fn mouse_event_client_x_ffi(obj : JsValue) -> Int {
  mouse_event_client_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_client_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientY"

///|
fn mouse_event_client_y_ffi(obj : JsValue) -> Int {
  mouse_event_client_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_layer_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.layerX"

///|
fn mouse_event_layer_x_ffi(obj : JsValue) -> Int {
  mouse_event_layer_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_layer_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.layerY"

///|
fn mouse_event_layer_y_ffi(obj : JsValue) -> Int {
  mouse_event_layer_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_ctrl_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
fn mouse_event_ctrl_key_ffi(obj : JsValue) -> Bool {
  mouse_event_ctrl_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_shift_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
fn mouse_event_shift_key_ffi(obj : JsValue) -> Bool {
  mouse_event_shift_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_alt_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
fn mouse_event_alt_key_ffi(obj : JsValue) -> Bool {
  mouse_event_alt_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_meta_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
fn mouse_event_meta_key_ffi(obj : JsValue) -> Bool {
  mouse_event_meta_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_button_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.button"

///|
fn mouse_event_button_ffi(obj : JsValue) -> Int {
  mouse_event_button_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_buttons_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.buttons"

///|
fn mouse_event_buttons_ffi(obj : JsValue) -> UInt {
  mouse_event_buttons_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_related_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.relatedTarget"

///|
fn mouse_event_related_target_ffi(obj : JsValue) -> EventTarget {
  mouse_event_related_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_get_modifier_state_ffi_js(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "(obj, key_arg) => obj.getModifierState(key_arg)"

///|
fn mouse_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> Bool {
  mouse_event_get_modifier_state_ffi_js(obj, key_arg).unsafe_cast()
}

///|
extern "js" fn mouse_event_init_mouse_event_ffi(
  obj : JsValue,
  type_arg : JsValue,
  bubbles_arg : JsValue,
  cancelable_arg : JsValue,
  view_arg : JsValue,
  detail_arg : JsValue,
  screen_x_arg : JsValue,
  screen_y_arg : JsValue,
  client_x_arg : JsValue,
  client_y_arg : JsValue,
  ctrl_key_arg : JsValue,
  alt_key_arg : JsValue,
  shift_key_arg : JsValue,
  meta_key_arg : JsValue,
  button_arg : JsValue,
  related_target_arg : JsValue,
) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg) => obj.initMouseEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)"

///|
extern "js" fn mouse_event_page_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageX"

///|
fn mouse_event_page_x_ffi(obj : JsValue) -> Double {
  mouse_event_page_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_page_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageY"

///|
fn mouse_event_page_y_ffi(obj : JsValue) -> Double {
  mouse_event_page_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn mouse_event_x_ffi(obj : JsValue) -> Double {
  mouse_event_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn mouse_event_y_ffi(obj : JsValue) -> Double {
  mouse_event_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_offset_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetX"

///|
fn mouse_event_offset_x_ffi(obj : JsValue) -> Double {
  mouse_event_offset_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mouse_event_offset_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetY"

///|
fn mouse_event_offset_y_ffi(obj : JsValue) -> Double {
  mouse_event_offset_y_ffi_js(obj).unsafe_cast()
}
