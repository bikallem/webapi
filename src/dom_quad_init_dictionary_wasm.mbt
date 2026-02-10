///|
fn dom_quad_init_ffi(
  p1 : JsValue,
  p2 : JsValue,
  p3 : JsValue,
  p4 : JsValue,
) -> DOMQuadInit = "webapi_DOMQuadInit" "new"

///|
fn dom_quad_init_empty_ffi() -> DOMQuadInit = "webapi_Dictionary" "empty"
