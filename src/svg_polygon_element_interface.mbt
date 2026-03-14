// Do not edit. This file is generated.
// MoonBit type: SVGPolygonElement
// Specifications: SVG.idl

/// [SVGPolygonElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement)
#external
pub type SVGPolygonElement

pub impl TJsValue for SVGPolygonElement with to_js(self: SVGPolygonElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGPolygonElement with from_js_any(value : JsAny) -> SVGPolygonElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGPolygonElement] SVGPolygonElement::into(self : SVGPolygonElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGPolygonElement] SVGPolygonElement::unsafe_into(self : SVGPolygonElement) -> T = "%identity"

pub impl HasConstructor for SVGPolygonElement with constructor_name() { "SVGPolygonElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGPolygonElement + HasConstructor] SVGPolygonElement::try_into(self : SVGPolygonElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGPolygonElement for SVGPolygonElement

pub impl TSVGGeometryElement for SVGPolygonElement

pub impl TSVGGraphicsElement for SVGPolygonElement

pub impl TSVGElement for SVGPolygonElement

pub impl TElement for SVGPolygonElement

pub impl TNode for SVGPolygonElement

pub impl TEventTarget for SVGPolygonElement

/// [SVGPolygonElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement) interface.
pub trait TSVGPolygonElement: TSVGGeometryElement {
  points(self : Self) -> SVGPointList = _
  animated_points(self : Self) -> SVGPointList = _
}

/// [SVGPolygonElement.points](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement/points)
impl TSVGPolygonElement with points(self : Self) -> SVGPointList {
  svg_polygon_element_points_ffi(TJsValue::to_js(self))
}

/// [SVGPolygonElement.animatedPoints](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement/animatedPoints)
impl TSVGPolygonElement with animated_points(self : Self) -> SVGPointList {
  svg_polygon_element_animated_points_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_polygon_element_points_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.points"

///|
#cfg(target="js")
fn svg_polygon_element_points_ffi(obj: JsValue) -> SVGPointList {
  svg_polygon_element_points_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_polygon_element_animated_points_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.animatedPoints"

///|
#cfg(target="js")
fn svg_polygon_element_animated_points_ffi(obj: JsValue) -> SVGPointList {
  svg_polygon_element_animated_points_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_polygon_element_points_ffi(obj: JsValue) -> SVGPointList = "webapi_SVGPolygonElement" "get_points"

#cfg(target="wasm-gc")
fn svg_polygon_element_animated_points_ffi(obj: JsValue) -> SVGPointList = "webapi_SVGPolygonElement" "get_animatedPoints"