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
pub fn[T : TSVGTransform] SVGTransform::into(self : SVGTransform) -> T = "%identity"

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
extern "js" fn svg_transform_type_ffi(obj : JsValue) -> UInt = "(obj) => obj.type"

///|
/// [SVGTransform.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/type)
impl TSVGTransform with type_(self : Self) -> UInt {
  svg_transform_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_transform_matrix_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.matrix"

///|
/// [SVGTransform.matrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/matrix)
impl TSVGTransform with matrix(self : Self) -> DOMMatrix {
  svg_transform_matrix_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_transform_angle_ffi(obj : JsValue) -> Float = "(obj) => obj.angle"

///|
/// [SVGTransform.angle](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/angle)
impl TSVGTransform with angle(self : Self) -> Float {
  svg_transform_angle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_transform_set_matrix_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> Unit = "(obj, matrix) => obj.setMatrix(matrix)"

///|
/// [SVGTransform.setMatrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setMatrix)
impl TSVGTransform with set_matrix(
  self : Self,
  matrix? : DOMMatrix2DInit = DOMMatrix2DInit::empty(),
) -> Unit {
  svg_transform_set_matrix_ffi(TJsValue::to_js(self), TJsValue::to_js(matrix))
}

///|
extern "js" fn svg_transform_set_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
) -> Unit = "(obj, tx, ty) => obj.setTranslate(tx, ty)"

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
extern "js" fn svg_transform_set_scale_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
) -> Unit = "(obj, sx, sy) => obj.setScale(sx, sy)"

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
extern "js" fn svg_transform_set_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
  cx : JsValue,
  cy : JsValue,
) -> Unit = "(obj, angle, cx, cy) => obj.setRotate(angle, cx, cy)"

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
extern "js" fn svg_transform_set_skew_x_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.setSkewX(angle)"

///|
/// [SVGTransform.setSkewX](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setSkewX)
impl TSVGTransform with set_skew_x(self : Self, angle : Float) -> Unit {
  svg_transform_set_skew_x_ffi(TJsValue::to_js(self), TJsValue::to_js(angle))
}

///|
extern "js" fn svg_transform_set_skew_y_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.setSkewY(angle)"

///|
/// [SVGTransform.setSkewY](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform/setSkewY)
impl TSVGTransform with set_skew_y(self : Self, angle : Float) -> Unit {
  svg_transform_set_skew_y_ffi(TJsValue::to_js(self), TJsValue::to_js(angle))
}
