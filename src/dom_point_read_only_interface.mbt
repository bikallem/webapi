// Do not edit. This file is generated.
// MoonBit type: DOMPointReadOnly
// Specifications: geometry.idl

///|
/// [DOMPointReadOnly](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly)
#external
pub type DOMPointReadOnly

///|
pub impl TJsValue for DOMPointReadOnly with to_js(self : DOMPointReadOnly) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMPointReadOnly with from_js_any(value : JsAny) -> DOMPointReadOnly = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDOMPointReadOnly] DOMPointReadOnly::into(
  self : DOMPointReadOnly,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDOMPointReadOnly] DOMPointReadOnly::unsafe_into(
  self : DOMPointReadOnly,
) -> T = "%identity"

///|
pub impl HasConstructor for DOMPointReadOnly with constructor_name() {
  "DOMPointReadOnly"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMPointReadOnly + HasConstructor] DOMPointReadOnly::try_into(
  self : DOMPointReadOnly,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TDOMPointReadOnly for DOMPointReadOnly

///|
pub fn DOMPointReadOnly::new(
  x? : Double,
  y? : Double,
  z? : Double,
  w? : Double,
) -> DOMPointReadOnly {
  dom_point_read_only_new_ffi(
    opt_to_js(x),
    opt_to_js(y),
    opt_to_js(z),
    opt_to_js(w),
  )
}

///|
/// [DOMPointReadOnly](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly) interface.
pub trait TDOMPointReadOnly: TJsValue {
  x(self : Self) -> Double = _
  y(self : Self) -> Double = _
  z(self : Self) -> Double = _
  w(self : Self) -> Double = _
  matrix_transform(self : Self, matrix? : DOMMatrixInit) -> DOMPoint = _
  to_json(self : Self) -> JsValue = _
}

///|
/// [DOMPointReadOnly.fromPoint](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly/fromPoint)
pub fn DOMPointReadOnly::from_point(other? : DOMPointInit) -> DOMPointReadOnly {
  dom_point_read_only_from_point_ffi(opt_to_js(other))
}

///|
/// [DOMPointReadOnly.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly/x)
impl TDOMPointReadOnly with x(self : Self) -> Double {
  dom_point_read_only_x_ffi(TJsValue::to_js(self))
}

///|
/// [DOMPointReadOnly.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly/y)
impl TDOMPointReadOnly with y(self : Self) -> Double {
  dom_point_read_only_y_ffi(TJsValue::to_js(self))
}

///|
/// [DOMPointReadOnly.z](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly/z)
impl TDOMPointReadOnly with z(self : Self) -> Double {
  dom_point_read_only_z_ffi(TJsValue::to_js(self))
}

///|
/// [DOMPointReadOnly.w](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly/w)
impl TDOMPointReadOnly with w(self : Self) -> Double {
  dom_point_read_only_w_ffi(TJsValue::to_js(self))
}

///|
/// [DOMPointReadOnly.matrixTransform](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly/matrixTransform)
impl TDOMPointReadOnly with matrix_transform(
  self : Self,
  matrix? : DOMMatrixInit,
) -> DOMPoint {
  dom_point_read_only_matrix_transform_ffi(
    TJsValue::to_js(self),
    opt_to_js(matrix),
  )
}

///|
/// [DOMPointReadOnly.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly/toJSON)
impl TDOMPointReadOnly with to_json(self : Self) -> JsValue {
  dom_point_read_only_to_json_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointReadOnly = "(x, y, z, w) => new DOMPointReadOnly(x, y, z, w)"

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_from_point_ffi_js(
  other : JsValue,
) -> JsValue = "(other) => DOMPointReadOnly.fromPoint(other)"

///|
#cfg(target="js")
fn dom_point_read_only_from_point_ffi(other : JsValue) -> DOMPointReadOnly {
  dom_point_read_only_from_point_ffi_js(other).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn dom_point_read_only_x_ffi(obj : JsValue) -> Double {
  dom_point_read_only_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn dom_point_read_only_y_ffi(obj : JsValue) -> Double {
  dom_point_read_only_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_z_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.z"

///|
#cfg(target="js")
fn dom_point_read_only_z_ffi(obj : JsValue) -> Double {
  dom_point_read_only_z_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_w_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.w"

///|
#cfg(target="js")
fn dom_point_read_only_w_ffi(obj : JsValue) -> Double {
  dom_point_read_only_w_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_matrix_transform_ffi_js(
  obj : JsValue,
  matrix : JsValue,
) -> JsValue = "(obj, matrix) => obj.matrixTransform(matrix)"

///|
#cfg(target="js")
fn dom_point_read_only_matrix_transform_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> DOMPoint {
  dom_point_read_only_matrix_transform_ffi_js(obj, matrix).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_point_read_only_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn dom_point_read_only_to_json_ffi(obj : JsValue) -> JsValue {
  dom_point_read_only_to_json_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointReadOnly = "webapi_DOMPointReadOnly" "new"

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_from_point_ffi(other : JsValue) -> DOMPointReadOnly = "webapi_DOMPointReadOnly" "fromPoint"

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_x_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "get_x"

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_y_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "get_y"

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_z_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "get_z"

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_w_ffi(obj : JsValue) -> Double = "webapi_DOMPointReadOnly" "get_w"

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_matrix_transform_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> DOMPoint = "webapi_DOMPointReadOnly" "matrixTransform"

///|
#cfg(target="wasm-gc")
fn dom_point_read_only_to_json_ffi(obj : JsValue) -> JsValue = "webapi_DOMPointReadOnly" "toJSON"
