///|
fn svg_transform_type_ffi(obj : JsValue) -> UInt = "webapi_SVGTransform" "get_type"

///|
fn svg_transform_matrix_ffi(obj : JsValue) -> DOMMatrix = "webapi_SVGTransform" "get_matrix"

///|
fn svg_transform_angle_ffi(obj : JsValue) -> Float = "webapi_SVGTransform" "get_angle"

///|
fn svg_transform_set_matrix_ffi(obj : JsValue, matrix : JsValue) -> Unit = "webapi_SVGTransform" "setMatrix"

///|
fn svg_transform_set_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
) -> Unit = "webapi_SVGTransform" "setTranslate"

///|
fn svg_transform_set_scale_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
) -> Unit = "webapi_SVGTransform" "setScale"

///|
fn svg_transform_set_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
  cx : JsValue,
  cy : JsValue,
) -> Unit = "webapi_SVGTransform" "setRotate"

///|
fn svg_transform_set_skew_x_ffi(obj : JsValue, angle : JsValue) -> Unit = "webapi_SVGTransform" "setSkewX"

///|
fn svg_transform_set_skew_y_ffi(obj : JsValue, angle : JsValue) -> Unit = "webapi_SVGTransform" "setSkewY"
