extern "js" fn dom_quad_new_ffi(p1: JsValue, p2: JsValue, p3: JsValue, p4: JsValue) -> DOMQuad = "(p1, p2, p3, p4) => new DOMQuad(p1, p2, p3, p4)"

extern "js" fn dom_quad_from_rect_ffi(other: JsValue) -> JsValue = "(other) => DOMQuad.fromRect(other)"

extern "js" fn dom_quad_from_quad_ffi(other: JsValue) -> JsValue = "(other) => DOMQuad.fromQuad(other)"

extern "js" fn dom_quad_p1_ffi(obj: JsValue) -> JsValue = "(obj) => obj.p1"

extern "js" fn dom_quad_p2_ffi(obj: JsValue) -> JsValue = "(obj) => obj.p2"

extern "js" fn dom_quad_p3_ffi(obj: JsValue) -> JsValue = "(obj) => obj.p3"

extern "js" fn dom_quad_p4_ffi(obj: JsValue) -> JsValue = "(obj) => obj.p4"

extern "js" fn dom_quad_get_bounds_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getBounds()"

extern "js" fn dom_quad_to_json_ffi(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"