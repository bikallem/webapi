///|
#external
pub type DOMPointReadOnly

///|
pub impl TJsValue for DOMPointReadOnly with to_js(self : DOMPointReadOnly) -> JsValue = "%identity"

///|
pub fn[T : TDOMPointReadOnly] DOMPointReadOnly::into(
  self : DOMPointReadOnly,
) -> T = "%identity"

///|
pub impl TDOMPointReadOnly for DOMPointReadOnly

///|
extern "js" fn dom_point_read_only_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointReadOnly = "(x, y, z, w) => new DOMPointReadOnly(x, y, z, w)"

///|
pub fn DOMPointReadOnly::new(
  x? : Double = 0,
  y? : Double = 0,
  z? : Double = 0,
  w? : Double = 1,
) -> DOMPointReadOnly {
  dom_point_read_only_new_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(w),
  )
}

///|
pub trait TDOMPointReadOnly: TJsValue {
  matrix_transform(self : Self, matrix? : DOMMatrixInit) -> DOMPoint = _
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn dom_point_read_only_matrix_transform_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> DOMPoint = "(obj, matrix) => obj.matrixTransform(obj, matrix)"

///|
impl TDOMPointReadOnly with matrix_transform(
  self : Self,
  matrix? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> DOMPoint {
  dom_point_read_only_matrix_transform_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(matrix),
  )
}

///|
extern "js" fn dom_point_read_only_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON(obj)"

///|
impl TDOMPointReadOnly with to_json(self : Self) -> JsValue {
  dom_point_read_only_to_json_ffi(TJsValue::to_js(self))
}
