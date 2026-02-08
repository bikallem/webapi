///|
fn mouse_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MouseEvent = "webapi_MouseEvent" "new"

///|
fn mouse_event_screen_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_screenX"

///|
fn mouse_event_screen_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_screenY"

///|
fn mouse_event_client_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_clientX"

///|
fn mouse_event_client_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_clientY"

///|
fn mouse_event_layer_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_layerX"

///|
fn mouse_event_layer_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_layerY"

///|
fn mouse_event_ctrl_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_ctrlKey"

///|
fn mouse_event_shift_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_shiftKey"

///|
fn mouse_event_alt_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_altKey"

///|
fn mouse_event_meta_key_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_metaKey"

///|
fn mouse_event_button_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_button"

///|
fn mouse_event_buttons_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_buttons"

///|
fn mouse_event_related_target_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_relatedTarget"

///|
fn mouse_event_get_modifier_state_ffi(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "webapi_MouseEvent" "getModifierState"

///|
fn mouse_event_init_mouse_event_ffi(
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
) -> Unit = "webapi_MouseEvent" "initMouseEvent"

///|
fn mouse_event_page_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_pageX"

///|
fn mouse_event_page_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_pageY"

///|
fn mouse_event_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_x"

///|
fn mouse_event_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_y"

///|
fn mouse_event_offset_x_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_offsetX"

///|
fn mouse_event_offset_y_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "get_offsetY"
