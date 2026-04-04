// Do not edit. This file is generated.
// MoonBit type: SVGEllipseElement
// Specifications: SVG.idl

///|
/// [SVGEllipseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement)
#external
pub type SVGEllipseElement

///|
pub impl TJsValue for SVGEllipseElement with to_js(self : SVGEllipseElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGEllipseElement with from_js_any(value : JsAny) -> SVGEllipseElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGEllipseElement] SVGEllipseElement::into(
  self : SVGEllipseElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGEllipseElement] SVGEllipseElement::unsafe_into(
  self : SVGEllipseElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGEllipseElement with constructor_name() {
  "SVGEllipseElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGEllipseElement + HasConstructor] SVGEllipseElement::try_into(
  self : SVGEllipseElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGEllipseElement for SVGEllipseElement

///|
pub impl TSVGGeometryElement for SVGEllipseElement

///|
pub impl TSVGGraphicsElement for SVGEllipseElement

///|
pub impl TSVGElement for SVGEllipseElement

///|
pub impl TElement for SVGEllipseElement

///|
pub impl TNode for SVGEllipseElement

///|
pub impl TEventTarget for SVGEllipseElement

///|
/// [SVGEllipseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement) interface.
pub trait TSVGEllipseElement: TSVGGeometryElement {
  cx(self : Self) -> SVGAnimatedLength = _
  cy(self : Self) -> SVGAnimatedLength = _
  rx(self : Self) -> SVGAnimatedLength = _
  ry(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGEllipseElement.cx](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/cx)
impl TSVGEllipseElement with cx(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_cx_ffi(TJsValue::to_js(self))
}

///|
/// [SVGEllipseElement.cy](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/cy)
impl TSVGEllipseElement with cy(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_cy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGEllipseElement.rx](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/rx)
impl TSVGEllipseElement with rx(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_rx_ffi(TJsValue::to_js(self))
}

///|
/// [SVGEllipseElement.ry](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/ry)
impl TSVGEllipseElement with ry(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_ry_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_ellipse_element_cx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cx"

///|
#cfg(target="js")
fn svg_ellipse_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_cx_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_ellipse_element_cy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cy"

///|
#cfg(target="js")
fn svg_ellipse_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_cy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_ellipse_element_rx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rx"

///|
#cfg(target="js")
fn svg_ellipse_element_rx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_rx_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_ellipse_element_ry_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ry"

///|
#cfg(target="js")
fn svg_ellipse_element_ry_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_ry_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_ellipse_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGEllipseElement" "get_cx"

///|
#cfg(target="wasm-gc")
fn svg_ellipse_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGEllipseElement" "get_cy"

///|
#cfg(target="wasm-gc")
fn svg_ellipse_element_rx_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGEllipseElement" "get_rx"

///|
#cfg(target="wasm-gc")
fn svg_ellipse_element_ry_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGEllipseElement" "get_ry"
