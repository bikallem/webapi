// Do not edit. This file is generated.
// MoonBit type: SVGTransform
// Specifications: SVG.idl

///|
/// [SVGTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform)
#external
pub type SVGTransform

///|
pub impl TJsValue for SVGTransform with to_js(self : SVGTransform) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGTransform with from_js_any(value : JsAny) -> SVGTransform = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGTransform] SVGTransform::into(self : SVGTransform) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGTransform] SVGTransform::unsafe_into(self : SVGTransform) -> T = "%identity"

///|
pub impl HasConstructor for SVGTransform with constructor_name() {
  "SVGTransform"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGTransform + HasConstructor] SVGTransform::try_into(
  self : SVGTransform,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGTransform for SVGTransform

///|
pub const SVG_TRANSFORM_SVG_TRANSFORM_UNKNOWN : UInt = 0

///|
pub const SVG_TRANSFORM_SVG_TRANSFORM_MATRIX : UInt = 1

///|
pub const SVG_TRANSFORM_SVG_TRANSFORM_TRANSLATE : UInt = 2

///|
pub const SVG_TRANSFORM_SVG_TRANSFORM_SCALE : UInt = 3

///|
pub const SVG_TRANSFORM_SVG_TRANSFORM_ROTATE : UInt = 4

///|
pub const SVG_TRANSFORM_SVG_TRANSFORM_SKEWX : UInt = 5

///|
pub const SVG_TRANSFORM_SVG_TRANSFORM_SKEWY : UInt = 6

///|
/// [SVGTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform) interface.
pub trait TSVGTransform: TJsValue {
  type_(self : Self) -> UInt = _
  matrix(self : Self) -> DOMMatrix = _
  angle(self : Self) -> Float = _
  set_matrix(self : Self, matrix? : DOMMatrix2DInit) -> Unit = _
  set_translate(self : Self, tx : Float, ty : Float) -> Unit = _
  set_scale(self : Self, sx : Float, sy : Float) -> Unit = _
  set_rotate(self : Self, angle : Float, cx : Float, cy : Float) -> Unit = _
  set_skew_x(self : Self, angle : Float) -> Unit = _
  set_skew_y(self : Self, angle : Float) -> Unit = _
}

///|
/// [SVGTransform.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/type)
impl TSVGTransform with type_(self : Self) -> UInt {
  svg_transform_type_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTransform.matrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/matrix)
impl TSVGTransform with matrix(self : Self) -> DOMMatrix {
  svg_transform_matrix_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTransform.angle](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/angle)
impl TSVGTransform with angle(self : Self) -> Float {
  svg_transform_angle_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTransform.setMatrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setMatrix)
impl TSVGTransform with set_matrix(self : Self, matrix? : DOMMatrix2DInit) -> Unit {
  svg_transform_set_matrix_ffi(TJsValue::to_js(self), opt_to_js(matrix))
}

///|
/// [SVGTransform.setTranslate](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setTranslate)
impl TSVGTransform with set_translate(self : Self, tx : Float, ty : Float) -> Unit {
  svg_transform_set_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tx),
    TJsValue::to_js(ty),
  )
}

///|
/// [SVGTransform.setScale](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setScale)
impl TSVGTransform with set_scale(self : Self, sx : Float, sy : Float) -> Unit {
  svg_transform_set_scale_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
  )
}

///|
/// [SVGTransform.setRotate](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setRotate)
impl TSVGTransform with set_rotate(
  self : Self,
  angle : Float,
  cx : Float,
  cy : Float,
) -> Unit {
  svg_transform_set_rotate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(angle),
    TJsValue::to_js(cx),
    TJsValue::to_js(cy),
  )
}

///|
/// [SVGTransform.setSkewX](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setSkewX)
impl TSVGTransform with set_skew_x(self : Self, angle : Float) -> Unit {
  svg_transform_set_skew_x_ffi(TJsValue::to_js(self), TJsValue::to_js(angle))
}

///|
/// [SVGTransform.setSkewY](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setSkewY)
impl TSVGTransform with set_skew_y(self : Self, angle : Float) -> Unit {
  svg_transform_set_skew_y_ffi(TJsValue::to_js(self), TJsValue::to_js(angle))
}

///|
#cfg(target="js")
extern "js" fn svg_transform_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn svg_transform_type_ffi(obj : JsValue) -> UInt {
  svg_transform_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_transform_matrix_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.matrix"

///|
#cfg(target="js")
fn svg_transform_matrix_ffi(obj : JsValue) -> DOMMatrix {
  svg_transform_matrix_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_transform_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.angle"

///|
#cfg(target="js")
fn svg_transform_angle_ffi(obj : JsValue) -> Float {
  svg_transform_angle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_transform_set_matrix_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> Unit = "(obj, matrix) => obj.setMatrix(matrix)"

///|
#cfg(target="js")
extern "js" fn svg_transform_set_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
) -> Unit = "(obj, tx, ty) => obj.setTranslate(tx, ty)"

///|
#cfg(target="js")
extern "js" fn svg_transform_set_scale_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
) -> Unit = "(obj, sx, sy) => obj.setScale(sx, sy)"

///|
#cfg(target="js")
extern "js" fn svg_transform_set_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
  cx : JsValue,
  cy : JsValue,
) -> Unit = "(obj, angle, cx, cy) => obj.setRotate(angle, cx, cy)"

///|
#cfg(target="js")
extern "js" fn svg_transform_set_skew_x_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.setSkewX(angle)"

///|
#cfg(target="js")
extern "js" fn svg_transform_set_skew_y_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.setSkewY(angle)"

///|
#cfg(target="wasm-gc")
fn svg_transform_type_ffi(obj : JsValue) -> UInt = "webapi_SVGTransform" "get_type"

///|
#cfg(target="wasm-gc")
fn svg_transform_matrix_ffi(obj : JsValue) -> DOMMatrix = "webapi_SVGTransform" "get_matrix"

///|
#cfg(target="wasm-gc")
fn svg_transform_angle_ffi(obj : JsValue) -> Float = "webapi_SVGTransform" "get_angle"

///|
#cfg(target="wasm-gc")
fn svg_transform_set_matrix_ffi(obj : JsValue, matrix : JsValue) -> Unit = "webapi_SVGTransform" "setMatrix"

///|
#cfg(target="wasm-gc")
fn svg_transform_set_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
) -> Unit = "webapi_SVGTransform" "setTranslate"

///|
#cfg(target="wasm-gc")
fn svg_transform_set_scale_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
) -> Unit = "webapi_SVGTransform" "setScale"

///|
#cfg(target="wasm-gc")
fn svg_transform_set_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
  cx : JsValue,
  cy : JsValue,
) -> Unit = "webapi_SVGTransform" "setRotate"

///|
#cfg(target="wasm-gc")
fn svg_transform_set_skew_x_ffi(obj : JsValue, angle : JsValue) -> Unit = "webapi_SVGTransform" "setSkewX"

///|
#cfg(target="wasm-gc")
fn svg_transform_set_skew_y_ffi(obj : JsValue, angle : JsValue) -> Unit = "webapi_SVGTransform" "setSkewY"
