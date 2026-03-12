fn dom_point_init_ffi(x: JsValue, y: JsValue, z: JsValue, w: JsValue) -> DOMPointInit = "webapi_DOMPointInit" "new"

fn dom_point_init_empty_ffi() -> DOMPointInit = "webapi_Dictionary" "empty"

fn dom_point_init_get_x_ffi(obj: JsValue) -> JsValue = "webapi_DOMPointInit" "get_x"

fn dom_point_init_get_y_ffi(obj: JsValue) -> JsValue = "webapi_DOMPointInit" "get_y"

fn dom_point_init_get_z_ffi(obj: JsValue) -> JsValue = "webapi_DOMPointInit" "get_z"

fn dom_point_init_get_w_ffi(obj: JsValue) -> JsValue = "webapi_DOMPointInit" "get_w"