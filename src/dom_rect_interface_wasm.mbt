fn dom_rect_new_ffi(x: JsValue, y: JsValue, width: JsValue, height: JsValue) -> DOMRect = "webapi_DOMRect" "new"

fn dom_rect_from_rect_ffi(other: JsValue) -> JsValue = "webapi_DOMRect" "fromRect"

fn dom_rect_x_ffi(obj: JsValue) -> JsValue = "webapi_DOMRect" "get_x"

fn dom_rect_set_x_ffi(obj: JsValue, x: JsValue) -> Unit = "webapi_DOMRect" "set_x"

fn dom_rect_y_ffi(obj: JsValue) -> JsValue = "webapi_DOMRect" "get_y"

fn dom_rect_set_y_ffi(obj: JsValue, y: JsValue) -> Unit = "webapi_DOMRect" "set_y"

fn dom_rect_width_ffi(obj: JsValue) -> JsValue = "webapi_DOMRect" "get_width"

fn dom_rect_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_DOMRect" "set_width"

fn dom_rect_height_ffi(obj: JsValue) -> JsValue = "webapi_DOMRect" "get_height"

fn dom_rect_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_DOMRect" "set_height"