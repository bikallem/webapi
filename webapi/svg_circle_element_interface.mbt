// Do not edit. This file is generated.
// MoonBit type: SVGCircleElement
// Specifications: SVG.idl

///|
/// [SVGCircleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement)
#external
pub type SVGCircleElement

///|
pub impl TJsValue for SVGCircleElement with to_js(self : SVGCircleElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGCircleElement with from_js_any(value : JsAny) -> SVGCircleElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGCircleElement] SVGCircleElement::into(
  self : SVGCircleElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGCircleElement] SVGCircleElement::unsafe_into(
  self : SVGCircleElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGCircleElement with constructor_name() {
  "SVGCircleElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGCircleElement + HasConstructor] SVGCircleElement::try_into(
  self : SVGCircleElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGCircleElement for SVGCircleElement

///|
pub impl TSVGGeometryElement for SVGCircleElement

///|
pub impl TSVGGraphicsElement for SVGCircleElement

///|
pub impl TSVGElement for SVGCircleElement

///|
pub impl TElement for SVGCircleElement

///|
pub impl TNode for SVGCircleElement

///|
pub impl TEventTarget for SVGCircleElement

///|
/// [SVGCircleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement) interface.
pub trait TSVGCircleElement: TSVGGeometryElement {
  cx(self : Self) -> SVGAnimatedLength = _
  cy(self : Self) -> SVGAnimatedLength = _
  r(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGCircleElement.cx](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement/cx)
impl TSVGCircleElement with cx(self : Self) -> SVGAnimatedLength {
  svg_circle_element_cx_ffi(TJsValue::to_js(self))
}

///|
/// [SVGCircleElement.cy](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement/cy)
impl TSVGCircleElement with cy(self : Self) -> SVGAnimatedLength {
  svg_circle_element_cy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGCircleElement.r](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement/r)
impl TSVGCircleElement with r(self : Self) -> SVGAnimatedLength {
  svg_circle_element_r_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_circle_element_cx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cx"

///|
#cfg(target="js")
fn svg_circle_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_circle_element_cx_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_circle_element_cy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cy"

///|
#cfg(target="js")
fn svg_circle_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_circle_element_cy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_circle_element_r_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.r"

///|
#cfg(target="js")
fn svg_circle_element_r_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_circle_element_r_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_circle_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGCircleElement" "get_cx"

///|
#cfg(target="wasm-gc")
fn svg_circle_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGCircleElement" "get_cy"

///|
#cfg(target="wasm-gc")
fn svg_circle_element_r_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGCircleElement" "get_r"
