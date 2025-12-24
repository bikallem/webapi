///|
#external
pub type SVGRectElement

///|
pub impl TJsValue for SVGRectElement with to_js(self : SVGRectElement) -> JsValue = "%identity"

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
pub trait TSVGRectElement: TSVGGeometryElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  rx(self : Self) -> SVGAnimatedLength = _
  ry(self : Self) -> SVGAnimatedLength = _
}

///|
extern "js" fn svg_rect_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.x"

///|
impl TSVGRectElement with x(self : Self) -> SVGAnimatedLength {
  svg_rect_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_rect_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.y"

///|
impl TSVGRectElement with y(self : Self) -> SVGAnimatedLength {
  svg_rect_element_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_rect_element_width_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.width"

///|
impl TSVGRectElement with width(self : Self) -> SVGAnimatedLength {
  svg_rect_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_rect_element_height_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.height"

///|
impl TSVGRectElement with height(self : Self) -> SVGAnimatedLength {
  svg_rect_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_rect_element_rx_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.rx"

///|
impl TSVGRectElement with rx(self : Self) -> SVGAnimatedLength {
  svg_rect_element_rx_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_rect_element_ry_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.ry"

///|
impl TSVGRectElement with ry(self : Self) -> SVGAnimatedLength {
  svg_rect_element_ry_ffi(TJsValue::to_js(self))
}
