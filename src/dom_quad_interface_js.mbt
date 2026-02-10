extern "js" fn dom_quad_new_ffi(p1: JsValue, p2: JsValue, p3: JsValue, p4: JsValue) -> DOMQuad = "(p1, p2, p3, p4) => new DOMQuad(p1, p2, p3, p4)"

extern "js" fn dom_quad_from_rect_ffi_js(other: JsValue) -> JsValue = "(other) => DOMQuad.fromRect(other)"

///|
fn dom_quad_from_rect_ffi(other: JsValue) -> DOMQuad {
  dom_quad_from_rect_ffi_js(other).unsafe_cast()
}

extern "js" fn dom_quad_from_quad_ffi_js(other: JsValue) -> JsValue = "(other) => DOMQuad.fromQuad(other)"

///|
fn dom_quad_from_quad_ffi(other: JsValue) -> DOMQuad {
  dom_quad_from_quad_ffi_js(other).unsafe_cast()
}

extern "js" fn dom_quad_p1_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p1"

///|
fn dom_quad_p1_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p1_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_quad_p2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p2"

///|
fn dom_quad_p2_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p2_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_quad_p3_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p3"

///|
fn dom_quad_p3_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p3_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_quad_p4_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.p4"

///|
fn dom_quad_p4_ffi(obj: JsValue) -> DOMPoint {
  dom_quad_p4_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_quad_get_bounds_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getBounds()"

///|
fn dom_quad_get_bounds_ffi(obj: JsValue) -> DOMRect {
  dom_quad_get_bounds_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_quad_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn dom_quad_to_json_ffi(obj: JsValue) -> JsValue {
  dom_quad_to_json_ffi_js(obj).unsafe_cast()
}