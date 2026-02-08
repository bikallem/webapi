///|
extern "js" fn dom_point_read_only_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointReadOnly = "(x, y, z, w) => new DOMPointReadOnly(x, y, z, w)"

///|
extern "js" fn dom_point_read_only_from_point_ffi(other : JsValue) -> JsValue = "(other) => DOMPointReadOnly.fromPoint(other)"

///|
extern "js" fn dom_point_read_only_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
extern "js" fn dom_point_read_only_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
extern "js" fn dom_point_read_only_z_ffi(obj : JsValue) -> JsValue = "(obj) => obj.z"

///|
extern "js" fn dom_point_read_only_w_ffi(obj : JsValue) -> JsValue = "(obj) => obj.w"

///|
extern "js" fn dom_point_read_only_matrix_transform_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> JsValue = "(obj, matrix) => obj.matrixTransform(matrix)"

///|
extern "js" fn dom_point_read_only_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"
