extern "js" fn dom_rect_read_only_new_ffi(x: JsValue, y: JsValue, width: JsValue, height: JsValue) -> DOMRectReadOnly = "(x, y, width, height) => new DOMRectReadOnly(x, y, width, height)"

extern "js" fn dom_rect_read_only_from_rect_ffi(other: JsValue) -> JsValue = "(other) => DOMRectReadOnly.fromRect(other)"

extern "js" fn dom_rect_read_only_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.x"

extern "js" fn dom_rect_read_only_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.y"

extern "js" fn dom_rect_read_only_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn dom_rect_read_only_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.height"

extern "js" fn dom_rect_read_only_top_ffi(obj: JsValue) -> JsValue = "(obj) => obj.top"

extern "js" fn dom_rect_read_only_right_ffi(obj: JsValue) -> JsValue = "(obj) => obj.right"

extern "js" fn dom_rect_read_only_bottom_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bottom"

extern "js" fn dom_rect_read_only_left_ffi(obj: JsValue) -> JsValue = "(obj) => obj.left"

extern "js" fn dom_rect_read_only_to_json_ffi(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"