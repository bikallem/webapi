extern "js" fn caret_position_offset_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.offsetNode"

extern "js" fn caret_position_offset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.offset"

extern "js" fn caret_position_get_client_rect_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getClientRect()"