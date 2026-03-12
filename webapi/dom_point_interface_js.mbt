///|
extern "js" fn dom_point_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPoint = "(x, y, z, w) => new DOMPoint(x, y, z, w)"

///|
extern "js" fn dom_point_from_point_ffi_js(other : JsValue) -> JsValue = "(other) => DOMPoint.fromPoint(other)"

///|
fn dom_point_from_point_ffi(other : JsValue) -> DOMPoint {
  dom_point_from_point_ffi_js(other).unsafe_cast()
}

///|
extern "js" fn dom_point_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn dom_point_x_ffi(obj : JsValue) -> Double {
  dom_point_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_set_x_ffi(obj : JsValue, x : JsValue) -> Unit = "(obj, x) => { obj.x = x; }"

///|
extern "js" fn dom_point_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn dom_point_y_ffi(obj : JsValue) -> Double {
  dom_point_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_set_y_ffi(obj : JsValue, y : JsValue) -> Unit = "(obj, y) => { obj.y = y; }"

///|
extern "js" fn dom_point_z_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.z"

///|
fn dom_point_z_ffi(obj : JsValue) -> Double {
  dom_point_z_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_set_z_ffi(obj : JsValue, z : JsValue) -> Unit = "(obj, z) => { obj.z = z; }"

///|
extern "js" fn dom_point_w_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.w"

///|
fn dom_point_w_ffi(obj : JsValue) -> Double {
  dom_point_w_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_set_w_ffi(obj : JsValue, w : JsValue) -> Unit = "(obj, w) => { obj.w = w; }"
