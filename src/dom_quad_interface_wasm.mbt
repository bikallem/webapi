fn dom_quad_new_ffi(p1: JsValue, p2: JsValue, p3: JsValue, p4: JsValue) -> DOMQuad = "webapi_DOMQuad" "new"

fn dom_quad_from_rect_ffi(other: JsValue) -> JsValue = "webapi_DOMQuad" "fromRect"

fn dom_quad_from_quad_ffi(other: JsValue) -> JsValue = "webapi_DOMQuad" "fromQuad"

fn dom_quad_p1_ffi(obj: JsValue) -> JsValue = "webapi_DOMQuad" "get_p1"

fn dom_quad_p2_ffi(obj: JsValue) -> JsValue = "webapi_DOMQuad" "get_p2"

fn dom_quad_p3_ffi(obj: JsValue) -> JsValue = "webapi_DOMQuad" "get_p3"

fn dom_quad_p4_ffi(obj: JsValue) -> JsValue = "webapi_DOMQuad" "get_p4"

fn dom_quad_get_bounds_ffi(obj: JsValue) -> JsValue = "webapi_DOMQuad" "getBounds"

fn dom_quad_to_json_ffi(obj: JsValue) -> JsValue = "webapi_DOMQuad" "toJSON"