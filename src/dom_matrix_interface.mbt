///|
#external
pub type DOMMatrix

///|
pub impl TJsValue for DOMMatrix with to_js(self : DOMMatrix) -> JsValue = "%identity"

///|
pub fn[T : TDOMMatrix] DOMMatrix::into(self : DOMMatrix) -> T = "%identity"

///|
pub impl TDOMMatrix for DOMMatrix

///|
pub impl TDOMMatrixReadOnly for DOMMatrix

///|
pub(open) trait TDOMMatrixNewInitArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDOMMatrixNewInitArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TDOMMatrixNewInitArg for Array[Double] with to_js(self : Array[Double]) -> JsValue = "%identity"

///|
extern "js" fn dom_matrix_ffi(init : JsValue) -> DOMMatrix = "(init) => new DOMMatrix(init)"

///|
pub fn DOMMatrix::new(init? : &TDOMMatrixNewInitArg) -> DOMMatrix {
  dom_matrix_ffi(
    match init {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub trait TDOMMatrix: TDOMMatrixReadOnly {
  multiply_self(self : Self, other? : DOMMatrixInit) -> DOMMatrix = _
  pre_multiply_self(self : Self, other? : DOMMatrixInit) -> DOMMatrix = _
  translate_self(self : Self, tx? : Double, ty? : Double, tz? : Double) -> DOMMatrix = _
  scale_self(
    self : Self,
    scale_x? : Double,
    scale_y? : Double,
    scale_z? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  scale3d_self(
    self : Self,
    scale? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  rotate_self(self : Self, rot_x? : Double, rot_y? : Double, rot_z? : Double) -> DOMMatrix = _
  rotate_from_vector_self(self : Self, x? : Double, y? : Double) -> DOMMatrix = _
  rotate_axis_angle_self(
    self : Self,
    x? : Double,
    y? : Double,
    z? : Double,
    angle? : Double,
  ) -> DOMMatrix = _
  skew_x_self(self : Self, sx? : Double) -> DOMMatrix = _
  skew_y_self(self : Self, sy? : Double) -> DOMMatrix = _
  invert_self(self : Self) -> DOMMatrix = _
  set_matrix_value(self : Self, transform_list : String) -> DOMMatrix = _
}

///|
extern "js" fn dom_matrix_multiply_self_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix = "(obj, other) => obj.multiplySelf(obj, other)"

///|
impl TDOMMatrix with multiply_self(
  self : Self,
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> DOMMatrix {
  dom_matrix_multiply_self_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}

///|
extern "js" fn dom_matrix_pre_multiply_self_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix = "(obj, other) => obj.preMultiplySelf(obj, other)"

///|
impl TDOMMatrix with pre_multiply_self(
  self : Self,
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> DOMMatrix {
  dom_matrix_pre_multiply_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(other),
  )
}

///|
extern "js" fn dom_matrix_translate_self_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> DOMMatrix = "(obj, tx, ty, tz) => obj.translateSelf(obj, tx, ty, tz)"

///|
impl TDOMMatrix with translate_self(
  self : Self,
  tx? : Double = 0,
  ty? : Double = 0,
  tz? : Double = 0,
) -> DOMMatrix {
  dom_matrix_translate_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tx),
    TJsValue::to_js(ty),
    TJsValue::to_js(tz),
  )
}

///|
extern "js" fn dom_matrix_scale_self_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scaleSelf(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

///|
impl TDOMMatrix with scale_self(
  self : Self,
  scale_x? : Double = 1,
  scale_y? : Double,
  scale_z? : Double = 1,
  origin_x? : Double = 0,
  origin_y? : Double = 0,
  origin_z? : Double = 0,
) -> DOMMatrix {
  dom_matrix_scale_self_ffi(
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
extern "js" fn dom_matrix_scale3d_self_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3dSelf(obj, scale, origin_x, origin_y, origin_z)"

///|
impl TDOMMatrix with scale3d_self(
  self : Self,
  scale? : Double = 1,
  origin_x? : Double = 0,
  origin_y? : Double = 0,
  origin_z? : Double = 0,
) -> DOMMatrix {
  dom_matrix_scale3d_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale),
    TJsValue::to_js(origin_x),
    TJsValue::to_js(origin_y),
    TJsValue::to_js(origin_z),
  )
}

///|
extern "js" fn dom_matrix_rotate_self_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> DOMMatrix = "(obj, rot_x, rot_y, rot_z) => obj.rotateSelf(obj, rot_x, rot_y, rot_z)"

///|
impl TDOMMatrix with rotate_self(
  self : Self,
  rot_x? : Double = 0,
  rot_y? : Double,
  rot_z? : Double,
) -> DOMMatrix {
  dom_matrix_rotate_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rot_x),
    opt_to_js(rot_y),
    opt_to_js(rot_z),
  )
}

///|
extern "js" fn dom_matrix_rotate_from_vector_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> DOMMatrix = "(obj, x, y) => obj.rotateFromVectorSelf(obj, x, y)"

///|
impl TDOMMatrix with rotate_from_vector_self(
  self : Self,
  x? : Double = 0,
  y? : Double = 0,
) -> DOMMatrix {
  dom_matrix_rotate_from_vector_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn dom_matrix_rotate_axis_angle_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> DOMMatrix = "(obj, x, y, z, angle) => obj.rotateAxisAngleSelf(obj, x, y, z, angle)"

///|
impl TDOMMatrix with rotate_axis_angle_self(
  self : Self,
  x? : Double = 0,
  y? : Double = 0,
  z? : Double = 0,
  angle? : Double = 0,
) -> DOMMatrix {
  dom_matrix_rotate_axis_angle_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(angle),
  )
}

///|
extern "js" fn dom_matrix_skew_x_self_ffi(
  obj : JsValue,
  sx : JsValue,
) -> DOMMatrix = "(obj, sx) => obj.skewXSelf(obj, sx)"

///|
impl TDOMMatrix with skew_x_self(self : Self, sx? : Double = 0) -> DOMMatrix {
  dom_matrix_skew_x_self_ffi(TJsValue::to_js(self), TJsValue::to_js(sx))
}

///|
extern "js" fn dom_matrix_skew_y_self_ffi(
  obj : JsValue,
  sy : JsValue,
) -> DOMMatrix = "(obj, sy) => obj.skewYSelf(obj, sy)"

///|
impl TDOMMatrix with skew_y_self(self : Self, sy? : Double = 0) -> DOMMatrix {
  dom_matrix_skew_y_self_ffi(TJsValue::to_js(self), TJsValue::to_js(sy))
}

///|
extern "js" fn dom_matrix_invert_self_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.invertSelf(obj)"

///|
impl TDOMMatrix with invert_self(self : Self) -> DOMMatrix {
  dom_matrix_invert_self_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_set_matrix_value_ffi(
  obj : JsValue,
  transform_list : JsValue,
) -> DOMMatrix = "(obj, transform_list) => obj.setMatrixValue(obj, transform_list)"

///|
impl TDOMMatrix with set_matrix_value(self : Self, transform_list : String) -> DOMMatrix {
  dom_matrix_set_matrix_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(transform_list),
  )
}
