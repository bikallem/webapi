extern "js" fn dom_rect_new_ffi(x: JsValue, y: JsValue, width: JsValue, height: JsValue) -> DOMRect = "(x, y, width, height) => new DOMRect(x, y, width, height)"

extern "js" fn dom_rect_from_rect_ffi(other: JsValue) -> JsValue = "(other) => DOMRect.fromRect(other)"

extern "js" fn dom_rect_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.x"

extern "js" fn dom_rect_set_x_ffi(obj: JsValue, x: JsValue) -> Unit = "(obj, x) => { obj.x = x; }"

extern "js" fn dom_rect_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.y"

extern "js" fn dom_rect_set_y_ffi(obj: JsValue, y: JsValue) -> Unit = "(obj, y) => { obj.y = y; }"

extern "js" fn dom_rect_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn dom_rect_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

extern "js" fn dom_rect_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.height"

extern "js" fn dom_rect_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"