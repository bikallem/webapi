extern "js" fn svg_transform_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn svg_transform_type_ffi(obj: JsValue) -> UInt {
  svg_transform_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_transform_matrix_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.matrix"

///|
fn svg_transform_matrix_ffi(obj: JsValue) -> DOMMatrix {
  svg_transform_matrix_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_transform_angle_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.angle"

///|
fn svg_transform_angle_ffi(obj: JsValue) -> Float {
  svg_transform_angle_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_transform_set_matrix_ffi(obj: JsValue, matrix: JsValue) -> Unit = "(obj, matrix) => obj.setMatrix(matrix)"

extern "js" fn svg_transform_set_translate_ffi(obj: JsValue, tx: JsValue, ty: JsValue) -> Unit = "(obj, tx, ty) => obj.setTranslate(tx, ty)"

extern "js" fn svg_transform_set_scale_ffi(obj: JsValue, sx: JsValue, sy: JsValue) -> Unit = "(obj, sx, sy) => obj.setScale(sx, sy)"

extern "js" fn svg_transform_set_rotate_ffi(obj: JsValue, angle: JsValue, cx: JsValue, cy: JsValue) -> Unit = "(obj, angle, cx, cy) => obj.setRotate(angle, cx, cy)"

extern "js" fn svg_transform_set_skew_x_ffi(obj: JsValue, angle: JsValue) -> Unit = "(obj, angle) => obj.setSkewX(angle)"

extern "js" fn svg_transform_set_skew_y_ffi(obj: JsValue, angle: JsValue) -> Unit = "(obj, angle) => obj.setSkewY(angle)"