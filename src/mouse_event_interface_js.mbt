extern "js" fn mouse_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> MouseEvent = "(type_, event_init_dict) => new MouseEvent(type_, event_init_dict)"

extern "js" fn mouse_event_screen_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenX"

extern "js" fn mouse_event_screen_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenY"

extern "js" fn mouse_event_client_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientX"

extern "js" fn mouse_event_client_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientY"

extern "js" fn mouse_event_layer_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.layerX"

extern "js" fn mouse_event_layer_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.layerY"

extern "js" fn mouse_event_ctrl_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ctrlKey"

extern "js" fn mouse_event_shift_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shiftKey"

extern "js" fn mouse_event_alt_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.altKey"

extern "js" fn mouse_event_meta_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.metaKey"

extern "js" fn mouse_event_button_ffi(obj: JsValue) -> JsValue = "(obj) => obj.button"

extern "js" fn mouse_event_buttons_ffi(obj: JsValue) -> JsValue = "(obj) => obj.buttons"

extern "js" fn mouse_event_related_target_ffi(obj: JsValue) -> JsValue = "(obj) => obj.relatedTarget"

extern "js" fn mouse_event_get_modifier_state_ffi(obj: JsValue, key_arg: JsValue) -> JsValue = "(obj, key_arg) => obj.getModifierState(key_arg)"

extern "js" fn mouse_event_init_mouse_event_ffi(obj: JsValue, type_arg: JsValue, bubbles_arg: JsValue, cancelable_arg: JsValue, view_arg: JsValue, detail_arg: JsValue, screen_x_arg: JsValue, screen_y_arg: JsValue, client_x_arg: JsValue, client_y_arg: JsValue, ctrl_key_arg: JsValue, alt_key_arg: JsValue, shift_key_arg: JsValue, meta_key_arg: JsValue, button_arg: JsValue, related_target_arg: JsValue) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg) => obj.initMouseEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)"

extern "js" fn mouse_event_page_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageX"

extern "js" fn mouse_event_page_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageY"

extern "js" fn mouse_event_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.x"

extern "js" fn mouse_event_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.y"

extern "js" fn mouse_event_offset_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.offsetX"

extern "js" fn mouse_event_offset_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.offsetY"