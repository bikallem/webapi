///|
#external
pub type SVGLineElement

///|
pub impl TJsValue for SVGLineElement with to_js(self : SVGLineElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGLineElement] SVGLineElement::into(self : SVGLineElement) -> T = "%identity"

///|
pub impl TSVGLineElement for SVGLineElement

///|
pub impl TSVGGeometryElement for SVGLineElement

///|
pub impl TSVGGraphicsElement for SVGLineElement

///|
pub impl TSVGElement for SVGLineElement

///|
pub impl TElement for SVGLineElement

///|
pub impl TNode for SVGLineElement

///|
pub impl TEventTarget for SVGLineElement

///|
pub trait TSVGLineElement: TSVGGeometryElement {
  x1(self : Self) -> SVGAnimatedLength = _
  y1(self : Self) -> SVGAnimatedLength = _
  x2(self : Self) -> SVGAnimatedLength = _
  y2(self : Self) -> SVGAnimatedLength = _
}

///|
extern "js" fn svg_line_element_x1_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.x1"

///|
impl TSVGLineElement with x1(self : Self) -> SVGAnimatedLength {
  svg_line_element_x1_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_line_element_y1_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.y1"

///|
impl TSVGLineElement with y1(self : Self) -> SVGAnimatedLength {
  svg_line_element_y1_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_line_element_x2_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.x2"

///|
impl TSVGLineElement with x2(self : Self) -> SVGAnimatedLength {
  svg_line_element_x2_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_line_element_y2_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.y2"

///|
impl TSVGLineElement with y2(self : Self) -> SVGAnimatedLength {
  svg_line_element_y2_ffi(TJsValue::to_js(self))
}
