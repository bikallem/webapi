///|
extern "js" fn dom_point_read_only_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointReadOnly = "(x, y, z, w) => new DOMPointReadOnly(x, y, z, w)"

///|
extern "js" fn dom_point_read_only_from_point_ffi_js(
  other : JsValue,
) -> JsValue = "(other) => DOMPointReadOnly.fromPoint(other)"

///|
fn dom_point_read_only_from_point_ffi(other : JsValue) -> DOMPointReadOnly {
  dom_point_read_only_from_point_ffi_js(other).unsafe_cast()
}

///|
extern "js" fn dom_point_read_only_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn dom_point_read_only_x_ffi(obj : JsValue) -> Double {
  dom_point_read_only_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_read_only_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn dom_point_read_only_y_ffi(obj : JsValue) -> Double {
  dom_point_read_only_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_read_only_z_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.z"

///|
fn dom_point_read_only_z_ffi(obj : JsValue) -> Double {
  dom_point_read_only_z_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_read_only_w_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.w"

///|
fn dom_point_read_only_w_ffi(obj : JsValue) -> Double {
  dom_point_read_only_w_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_point_read_only_matrix_transform_ffi_js(
  obj : JsValue,
  matrix : JsValue,
) -> JsValue = "(obj, matrix) => obj.matrixTransform(matrix)"

///|
fn dom_point_read_only_matrix_transform_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> DOMPoint {
  dom_point_read_only_matrix_transform_ffi_js(obj, matrix).unsafe_cast()
}

///|
extern "js" fn dom_point_read_only_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn dom_point_read_only_to_json_ffi(obj : JsValue) -> JsValue {
  dom_point_read_only_to_json_ffi_js(obj).unsafe_cast()
}
