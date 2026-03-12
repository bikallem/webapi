// Do not edit. This file is generated.
// MoonBit type: SVGRadialGradientElement
// Specifications: SVG.idl

///|
/// [SVGRadialGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement)
#external
pub type SVGRadialGradientElement

///|
pub impl TJsValue for SVGRadialGradientElement with to_js(
  self : SVGRadialGradientElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGRadialGradientElement with from_js_any(value : JsAny) -> SVGRadialGradientElement = "%identity"

///|
pub fn[T : TSVGRadialGradientElement] SVGRadialGradientElement::into(
  self : SVGRadialGradientElement,
) -> T = "%identity"

///|
pub impl TSVGRadialGradientElement for SVGRadialGradientElement

///|
pub impl TSVGGradientElement for SVGRadialGradientElement

///|
pub impl TSVGElement for SVGRadialGradientElement

///|
pub impl TElement for SVGRadialGradientElement

///|
pub impl TNode for SVGRadialGradientElement

///|
pub impl TEventTarget for SVGRadialGradientElement

///|
/// [SVGRadialGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement) interface.
pub trait TSVGRadialGradientElement: TSVGGradientElement {
  cx(self : Self) -> SVGAnimatedLength = _
  cy(self : Self) -> SVGAnimatedLength = _
  r(self : Self) -> SVGAnimatedLength = _
  fx(self : Self) -> SVGAnimatedLength = _
  fy(self : Self) -> SVGAnimatedLength = _
  fr(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGRadialGradientElement.cx](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement/cx)
impl TSVGRadialGradientElement with cx(self : Self) -> SVGAnimatedLength {
  svg_radial_gradient_element_cx_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRadialGradientElement.cy](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement/cy)
impl TSVGRadialGradientElement with cy(self : Self) -> SVGAnimatedLength {
  svg_radial_gradient_element_cy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRadialGradientElement.r](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement/r)
impl TSVGRadialGradientElement with r(self : Self) -> SVGAnimatedLength {
  svg_radial_gradient_element_r_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRadialGradientElement.fx](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement/fx)
impl TSVGRadialGradientElement with fx(self : Self) -> SVGAnimatedLength {
  svg_radial_gradient_element_fx_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRadialGradientElement.fy](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement/fy)
impl TSVGRadialGradientElement with fy(self : Self) -> SVGAnimatedLength {
  svg_radial_gradient_element_fy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRadialGradientElement.fr](https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement/fr)
impl TSVGRadialGradientElement with fr(self : Self) -> SVGAnimatedLength {
  svg_radial_gradient_element_fr_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_radial_gradient_element_cx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cx"

///|
#cfg(target="js")
fn svg_radial_gradient_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_cx_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_radial_gradient_element_cy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cy"

///|
#cfg(target="js")
fn svg_radial_gradient_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_cy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_radial_gradient_element_r_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.r"

///|
#cfg(target="js")
fn svg_radial_gradient_element_r_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_r_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_radial_gradient_element_fx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fx"

///|
#cfg(target="js")
fn svg_radial_gradient_element_fx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_fx_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_radial_gradient_element_fy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fy"

///|
#cfg(target="js")
fn svg_radial_gradient_element_fy_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_fy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_radial_gradient_element_fr_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fr"

///|
#cfg(target="js")
fn svg_radial_gradient_element_fr_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_fr_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_radial_gradient_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRadialGradientElement" "get_cx"

///|
#cfg(target="wasm-gc")
fn svg_radial_gradient_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRadialGradientElement" "get_cy"

///|
#cfg(target="wasm-gc")
fn svg_radial_gradient_element_r_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRadialGradientElement" "get_r"

///|
#cfg(target="wasm-gc")
fn svg_radial_gradient_element_fx_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRadialGradientElement" "get_fx"

///|
#cfg(target="wasm-gc")
fn svg_radial_gradient_element_fy_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRadialGradientElement" "get_fy"

///|
#cfg(target="wasm-gc")
fn svg_radial_gradient_element_fr_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRadialGradientElement" "get_fr"
