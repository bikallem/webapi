fn box_quad_options_ffi(box: JsValue, relative_to: JsValue) -> BoxQuadOptions = "webapi_BoxQuadOptions" "new"

fn box_quad_options_empty_ffi() -> BoxQuadOptions = "webapi_Dictionary" "empty"

fn box_quad_options_get_box_ffi(obj: JsValue) -> JsValue = "webapi_BoxQuadOptions" "get_box"

fn box_quad_options_get_relative_to_ffi(obj: JsValue) -> JsValue = "webapi_BoxQuadOptions" "get_relativeTo"