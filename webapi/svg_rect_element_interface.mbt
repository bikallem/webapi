// Do not edit. This file is generated.
// MoonBit type: SVGRectElement
// Specifications: SVG.idl

///|
/// [SVGRectElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement)
#external
pub type SVGRectElement

///|
pub impl TJsValue for SVGRectElement with to_js(self : SVGRectElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGRectElement with from_js_any(value : JsAny) -> SVGRectElement = "%identity"

///|
pub fn[T : TSVGRectElement] SVGRectElement::into(self : SVGRectElement) -> T = "%identity"

///|
pub impl TSVGRectElement for SVGRectElement

///|
pub impl TSVGGeometryElement for SVGRectElement

///|
pub impl TSVGGraphicsElement for SVGRectElement

///|
pub impl TSVGElement for SVGRectElement

///|
pub impl TElement for SVGRectElement

///|
pub impl TNode for SVGRectElement

///|
pub impl TEventTarget for SVGRectElement

///|
/// [SVGRectElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement) interface.
pub trait TSVGRectElement: TSVGGeometryElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  rx(self : Self) -> SVGAnimatedLength = _
  ry(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGRectElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement/x)
impl TSVGRectElement with x(self : Self) -> SVGAnimatedLength {
  svg_rect_element_x_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRectElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement/y)
impl TSVGRectElement with y(self : Self) -> SVGAnimatedLength {
  svg_rect_element_y_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRectElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement/width)
impl TSVGRectElement with width(self : Self) -> SVGAnimatedLength {
  svg_rect_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRectElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement/height)
impl TSVGRectElement with height(self : Self) -> SVGAnimatedLength {
  svg_rect_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRectElement.rx](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement/rx)
impl TSVGRectElement with rx(self : Self) -> SVGAnimatedLength {
  svg_rect_element_rx_ffi(TJsValue::to_js(self))
}

///|
/// [SVGRectElement.ry](https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement/ry)
impl TSVGRectElement with ry(self : Self) -> SVGAnimatedLength {
  svg_rect_element_ry_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_rect_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn svg_rect_element_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_rect_element_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_rect_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn svg_rect_element_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_rect_element_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_rect_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn svg_rect_element_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_rect_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_rect_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn svg_rect_element_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_rect_element_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_rect_element_rx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rx"

///|
#cfg(target="js")
fn svg_rect_element_rx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_rect_element_rx_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_rect_element_ry_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ry"

///|
#cfg(target="js")
fn svg_rect_element_ry_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_rect_element_ry_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_rect_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRectElement" "get_x"

///|
#cfg(target="wasm-gc")
fn svg_rect_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRectElement" "get_y"

///|
#cfg(target="wasm-gc")
fn svg_rect_element_width_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRectElement" "get_width"

///|
#cfg(target="wasm-gc")
fn svg_rect_element_height_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRectElement" "get_height"

///|
#cfg(target="wasm-gc")
fn svg_rect_element_rx_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRectElement" "get_rx"

///|
#cfg(target="wasm-gc")
fn svg_rect_element_ry_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGRectElement" "get_ry"
