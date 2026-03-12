// Do not edit. This file is generated.
// MoonBit type: SVGGeometryElement
// Specifications: SVG.idl

///|
/// [SVGGeometryElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement)
#external
pub type SVGGeometryElement

///|
pub impl TJsValue for SVGGeometryElement with to_js(self : SVGGeometryElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGGeometryElement with from_js_any(value : JsAny) -> SVGGeometryElement = "%identity"

///|
pub fn[T : TSVGGeometryElement] SVGGeometryElement::into(
  self : SVGGeometryElement,
) -> T = "%identity"

///|
pub impl TSVGGeometryElement for SVGGeometryElement

///|
pub impl TSVGGraphicsElement for SVGGeometryElement

///|
pub impl TSVGElement for SVGGeometryElement

///|
pub impl TElement for SVGGeometryElement

///|
pub impl TNode for SVGGeometryElement

///|
pub impl TEventTarget for SVGGeometryElement

///|
/// [SVGGeometryElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement) interface.
pub trait TSVGGeometryElement: TSVGGraphicsElement {
  path_length(self : Self) -> SVGAnimatedNumber = _
  is_point_in_fill(self : Self, point? : DOMPointInit) -> Bool = _
  is_point_in_stroke(self : Self, point? : DOMPointInit) -> Bool = _
  get_total_length(self : Self) -> Float = _
  get_point_at_length(self : Self, distance : Float) -> DOMPoint = _
}

///|
/// [SVGGeometryElement.pathLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement/pathLength)
impl TSVGGeometryElement with path_length(self : Self) -> SVGAnimatedNumber {
  svg_geometry_element_path_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGGeometryElement.isPointInFill](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement/isPointInFill)
impl TSVGGeometryElement with is_point_in_fill(
  self : Self,
  point? : DOMPointInit,
) -> Bool {
  svg_geometry_element_is_point_in_fill_ffi(
    TJsValue::to_js(self),
    opt_to_js(point),
  )
}

///|
/// [SVGGeometryElement.isPointInStroke](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement/isPointInStroke)
impl TSVGGeometryElement with is_point_in_stroke(
  self : Self,
  point? : DOMPointInit,
) -> Bool {
  svg_geometry_element_is_point_in_stroke_ffi(
    TJsValue::to_js(self),
    opt_to_js(point),
  )
}

///|
/// [SVGGeometryElement.getTotalLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement/getTotalLength)
impl TSVGGeometryElement with get_total_length(self : Self) -> Float {
  svg_geometry_element_get_total_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGGeometryElement.getPointAtLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGGeometryElement/getPointAtLength)
impl TSVGGeometryElement with get_point_at_length(self : Self, distance : Float) -> DOMPoint {
  svg_geometry_element_get_point_at_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(distance),
  )
}

///|
#cfg(target="js")
extern "js" fn svg_geometry_element_path_length_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pathLength"

///|
#cfg(target="js")
fn svg_geometry_element_path_length_ffi(obj : JsValue) -> SVGAnimatedNumber {
  svg_geometry_element_path_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_geometry_element_is_point_in_fill_ffi_js(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.isPointInFill(point)"

///|
#cfg(target="js")
fn svg_geometry_element_is_point_in_fill_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool {
  svg_geometry_element_is_point_in_fill_ffi_js(obj, point).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_geometry_element_is_point_in_stroke_ffi_js(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.isPointInStroke(point)"

///|
#cfg(target="js")
fn svg_geometry_element_is_point_in_stroke_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool {
  svg_geometry_element_is_point_in_stroke_ffi_js(obj, point).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_geometry_element_get_total_length_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getTotalLength()"

///|
#cfg(target="js")
fn svg_geometry_element_get_total_length_ffi(obj : JsValue) -> Float {
  svg_geometry_element_get_total_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_geometry_element_get_point_at_length_ffi_js(
  obj : JsValue,
  distance : JsValue,
) -> JsValue = "(obj, distance) => obj.getPointAtLength(distance)"

///|
#cfg(target="js")
fn svg_geometry_element_get_point_at_length_ffi(
  obj : JsValue,
  distance : JsValue,
) -> DOMPoint {
  svg_geometry_element_get_point_at_length_ffi_js(obj, distance).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_geometry_element_path_length_ffi(obj : JsValue) -> SVGAnimatedNumber = "webapi_SVGGeometryElement" "get_pathLength"

///|
#cfg(target="wasm-gc")
fn svg_geometry_element_is_point_in_fill_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool = "webapi_SVGGeometryElement" "isPointInFill"

///|
#cfg(target="wasm-gc")
fn svg_geometry_element_is_point_in_stroke_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool = "webapi_SVGGeometryElement" "isPointInStroke"

///|
#cfg(target="wasm-gc")
fn svg_geometry_element_get_total_length_ffi(obj : JsValue) -> Float = "webapi_SVGGeometryElement" "getTotalLength"

///|
#cfg(target="wasm-gc")
fn svg_geometry_element_get_point_at_length_ffi(
  obj : JsValue,
  distance : JsValue,
) -> DOMPoint = "webapi_SVGGeometryElement" "getPointAtLength"
