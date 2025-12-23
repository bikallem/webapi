///|
#external
pub type DOMMatrixReadOnly

///|
pub impl TJsValue for DOMMatrixReadOnly with to_js(self : DOMMatrixReadOnly) -> JsValue = "%identity"

///|
pub fn[T : TDOMMatrixReadOnly] DOMMatrixReadOnly::into(
  self : DOMMatrixReadOnly,
) -> T = "%identity"

///|
pub impl TDOMMatrixReadOnly for DOMMatrixReadOnly

///|
pub(open) trait TDOMMatrixReadOnlyNewInit {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDOMMatrixReadOnlyNewInit for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TDOMMatrixReadOnlyNewInit for Array[Double] with to_js(
  self : Array[Double],
) -> JsValue = "%identity"

///|
extern "js" fn dom_matrix_read_only_new_ffi(
  init : JsValue,
) -> DOMMatrixReadOnly = "(init) => new DOMMatrixReadOnly(init)"

///|
pub fn DOMMatrixReadOnly::new(
  init? : &TDOMMatrixReadOnlyNewInit,
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_new_ffi(
    match init {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub trait TDOMMatrixReadOnly: TJsValue {
  translate(self : Self, tx? : Double, ty? : Double, tz? : Double) -> DOMMatrix = _
  scale(
    self : Self,
    scale_x? : Double,
    scale_y? : Double,
    scale_z? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  scale_non_uniform(self : Self, scale_x? : Double, scale_y? : Double) -> DOMMatrix = _
  scale3d(
    self : Self,
    scale? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  rotate(self : Self, rot_x? : Double, rot_y? : Double, rot_z? : Double) -> DOMMatrix = _
  rotate_from_vector(self : Self, x? : Double, y? : Double) -> DOMMatrix = _
  rotate_axis_angle(
    self : Self,
    x? : Double,
    y? : Double,
    z? : Double,
    angle? : Double,
  ) -> DOMMatrix = _
  skew_x(self : Self, sx? : Double) -> DOMMatrix = _
  skew_y(self : Self, sy? : Double) -> DOMMatrix = _
  multiply(self : Self, other? : DOMMatrixInit) -> DOMMatrix = _
  flip_x(self : Self) -> DOMMatrix = _
  flip_y(self : Self) -> DOMMatrix = _
  inverse(self : Self) -> DOMMatrix = _
  transform_point(self : Self, point? : DOMPointInit) -> DOMPoint = _
  to_float32array(self : Self) -> Float32Array = _
  to_float64array(self : Self) -> Float64Array = _
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn dom_matrix_read_only_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> DOMMatrix = "(obj, tx, ty, tz) => obj.translate(obj, tx, ty, tz)"

///|
impl TDOMMatrixReadOnly with translate(
  self : Self,
  tx? : Double = 0,
  ty? : Double = 0,
  tz? : Double = 0,
) -> DOMMatrix {
  dom_matrix_read_only_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tx),
    TJsValue::to_js(ty),
    TJsValue::to_js(tz),
  )
}

///|
extern "js" fn dom_matrix_read_only_scale_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scale(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

///|
impl TDOMMatrixReadOnly with scale(
  self : Self,
  scale_x? : Double = 1,
  scale_y? : Double,
  scale_z? : Double = 1,
  origin_x? : Double = 0,
  origin_y? : Double = 0,
  origin_z? : Double = 0,
) -> DOMMatrix {
  dom_matrix_read_only_scale_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale_x),
    opt_to_js(scale_y),
    TJsValue::to_js(scale_z),
    TJsValue::to_js(origin_x),
    TJsValue::to_js(origin_y),
    TJsValue::to_js(origin_z),
  )
}

///|
extern "js" fn dom_matrix_read_only_scale_non_uniform_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
) -> DOMMatrix = "(obj, scale_x, scale_y) => obj.scaleNonUniform(obj, scale_x, scale_y)"

///|
impl TDOMMatrixReadOnly with scale_non_uniform(
  self : Self,
  scale_x? : Double = 1,
  scale_y? : Double = 1,
) -> DOMMatrix {
  dom_matrix_read_only_scale_non_uniform_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale_x),
    TJsValue::to_js(scale_y),
  )
}

///|
extern "js" fn dom_matrix_read_only_scale3d_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3d(obj, scale, origin_x, origin_y, origin_z)"

///|
impl TDOMMatrixReadOnly with scale3d(
  self : Self,
  scale? : Double = 1,
  origin_x? : Double = 0,
  origin_y? : Double = 0,
  origin_z? : Double = 0,
) -> DOMMatrix {
  dom_matrix_read_only_scale3d_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale),
    TJsValue::to_js(origin_x),
    TJsValue::to_js(origin_y),
    TJsValue::to_js(origin_z),
  )
}

///|
extern "js" fn dom_matrix_read_only_rotate_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> DOMMatrix = "(obj, rot_x, rot_y, rot_z) => obj.rotate(obj, rot_x, rot_y, rot_z)"

///|
impl TDOMMatrixReadOnly with rotate(
  self : Self,
  rot_x? : Double = 0,
  rot_y? : Double,
  rot_z? : Double,
) -> DOMMatrix {
  dom_matrix_read_only_rotate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rot_x),
    opt_to_js(rot_y),
    opt_to_js(rot_z),
  )
}

///|
extern "js" fn dom_matrix_read_only_rotate_from_vector_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> DOMMatrix = "(obj, x, y) => obj.rotateFromVector(obj, x, y)"

///|
impl TDOMMatrixReadOnly with rotate_from_vector(
  self : Self,
  x? : Double = 0,
  y? : Double = 0,
) -> DOMMatrix {
  dom_matrix_read_only_rotate_from_vector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn dom_matrix_read_only_rotate_axis_angle_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> DOMMatrix = "(obj, x, y, z, angle) => obj.rotateAxisAngle(obj, x, y, z, angle)"

///|
impl TDOMMatrixReadOnly with rotate_axis_angle(
  self : Self,
  x? : Double = 0,
  y? : Double = 0,
  z? : Double = 0,
  angle? : Double = 0,
) -> DOMMatrix {
  dom_matrix_read_only_rotate_axis_angle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(angle),
  )
}

///|
extern "js" fn dom_matrix_read_only_skew_x_ffi(
  obj : JsValue,
  sx : JsValue,
) -> DOMMatrix = "(obj, sx) => obj.skewX(obj, sx)"

///|
impl TDOMMatrixReadOnly with skew_x(self : Self, sx? : Double = 0) -> DOMMatrix {
  dom_matrix_read_only_skew_x_ffi(TJsValue::to_js(self), TJsValue::to_js(sx))
}

///|
extern "js" fn dom_matrix_read_only_skew_y_ffi(
  obj : JsValue,
  sy : JsValue,
) -> DOMMatrix = "(obj, sy) => obj.skewY(obj, sy)"

///|
impl TDOMMatrixReadOnly with skew_y(self : Self, sy? : Double = 0) -> DOMMatrix {
  dom_matrix_read_only_skew_y_ffi(TJsValue::to_js(self), TJsValue::to_js(sy))
}

///|
extern "js" fn dom_matrix_read_only_multiply_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix = "(obj, other) => obj.multiply(obj, other)"

///|
impl TDOMMatrixReadOnly with multiply(
  self : Self,
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> DOMMatrix {
  dom_matrix_read_only_multiply_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(other),
  )
}

///|
extern "js" fn dom_matrix_read_only_flip_x_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.flipX(obj)"

///|
impl TDOMMatrixReadOnly with flip_x(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_flip_y_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.flipY(obj)"

///|
impl TDOMMatrixReadOnly with flip_y(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_inverse_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.inverse(obj)"

///|
impl TDOMMatrixReadOnly with inverse(self : Self) -> DOMMatrix {
  dom_matrix_read_only_inverse_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_transform_point_ffi(
  obj : JsValue,
  point : JsValue,
) -> DOMPoint = "(obj, point) => obj.transformPoint(obj, point)"

///|
impl TDOMMatrixReadOnly with transform_point(
  self : Self,
  point? : DOMPointInit = DOMPointInit::empty(),
) -> DOMPoint {
  dom_matrix_read_only_transform_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
  )
}

///|
extern "js" fn dom_matrix_read_only_to_float32array_ffi(
  obj : JsValue,
) -> Float32Array = "(obj) => obj.toFloat32Array(obj)"

///|
impl TDOMMatrixReadOnly with to_float32array(self : Self) -> Float32Array {
  dom_matrix_read_only_to_float32array_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_to_float64array_ffi(
  obj : JsValue,
) -> Float64Array = "(obj) => obj.toFloat64Array(obj)"

///|
impl TDOMMatrixReadOnly with to_float64array(self : Self) -> Float64Array {
  dom_matrix_read_only_to_float64array_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON(obj)"

///|
impl TDOMMatrixReadOnly with to_json(self : Self) -> JsValue {
  dom_matrix_read_only_to_json_ffi(TJsValue::to_js(self))
}
