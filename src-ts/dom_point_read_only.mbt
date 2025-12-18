// Auto-generated MoonBit bindings for DOMPointReadOnly

// Do not edit manually

///|
#external
pub type DOMPointReadOnly

///|
pub trait TDOMPointReadOnly: TJsValue {
  x(self : Self) -> Double = _
  y(self : Self) -> Double = _
  z(self : Self) -> Double = _
  w(self : Self) -> Double = _
  matrix_transform(self : Self, matrix? : DOMMatrixInit) -> JsValue = _
  to_json(self : Self) -> JsValue = _
}

///|
pub fn[T : TDOMPointReadOnly] DOMPointReadOnly::into(self : DOMPointReadOnly) -> T = "%identity"

///|
pub impl TDOMPointReadOnly for DOMPointReadOnly

///|
pub impl TJsValue for DOMPointReadOnly with to_js(self : DOMPointReadOnly) -> JsValue = "%identity"

///|
pub fn DOMPointReadOnly::null() -> DOMPointReadOnly {
  JsValue::null()
}

///|
fn dom_point_read_only_new_ffi(x : JsValue, y : JsValue, z : JsValue, w : JsValue) -> DOMPointReadOnly = "webapi_DOMPointReadOnly" "new"

///|
pub fn DOMPointReadOnly::new(x? : Double = 0, y? : Double = 0, z? : Double = 0, w? : Double = 1) -> DOMPointReadOnly {
  dom_point_read_only_new_ffi(TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(z), TJsValue::to_js(w))
}

///|
fn dom_point_read_only_from_point_ffi(other : JsValue) -> JsValue = "webapi_DOMPointReadOnly" "fromPoint"

///|
pub fn DOMPointReadOnly::from_point(other? : DOMPointInit = DOMPointInit::empty()) -> JsValue {
  dom_point_read_only_from_point_ffi(TJsValue::to_js(other))
}

///|
fn dom_point_read_only_matrix_transform_ffi(obj : JsValue, matrix : JsValue) -> JsValue = "webapi_DOMPointReadOnly" "matrixTransform"

///|
impl TDOMPointReadOnly with matrix_transform(self : Self, matrix? : DOMMatrixInit = DOMMatrixInit::empty()) -> JsValue {
  dom_point_read_only_matrix_transform_ffi(TJsValue::to_js(self), TJsValue::to_js(matrix)).unsafe_cast()
}

///|
fn dom_point_read_only_to_json_ffi(obj : JsValue) -> JsValue = "webapi_DOMPointReadOnly" "toJSON"

///|
impl TDOMPointReadOnly with to_json(self : Self) -> JsValue {
  dom_point_read_only_to_json_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn dom_point_read_only_x_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "x"

///|
impl TDOMPointReadOnly with x(self : Self) -> Double {
  dom_point_read_only_x_ffi(self.to_js())
}

///|
fn dom_point_read_only_y_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "y"

///|
impl TDOMPointReadOnly with y(self : Self) -> Double {
  dom_point_read_only_y_ffi(self.to_js())
}

///|
fn dom_point_read_only_z_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "z"

///|
impl TDOMPointReadOnly with z(self : Self) -> Double {
  dom_point_read_only_z_ffi(self.to_js())
}

///|
fn dom_point_read_only_w_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "w"

///|
impl TDOMPointReadOnly with w(self : Self) -> Double {
  dom_point_read_only_w_ffi(self.to_js())
}