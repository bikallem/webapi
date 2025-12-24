///|
#external
pub type SVGUseElement

///|
pub impl TJsValue for SVGUseElement with to_js(self : SVGUseElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGUseElement] SVGUseElement::into(self : SVGUseElement) -> T = "%identity"

///|
pub impl TSVGUseElement for SVGUseElement

///|
pub impl TSVGGraphicsElement for SVGUseElement

///|
pub impl TSVGElement for SVGUseElement

///|
pub impl TElement for SVGUseElement

///|
pub impl TNode for SVGUseElement

///|
pub impl TEventTarget for SVGUseElement

///|
pub trait TSVGUseElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  instance_root(self : Self) -> SVGElement = _
  animated_instance_root(self : Self) -> SVGElement = _
  href(self : Self) -> SVGAnimatedString = _
}

///|
extern "js" fn svg_use_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.x"

///|
impl TSVGUseElement with x(self : Self) -> SVGAnimatedLength {
  svg_use_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_use_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.y"

///|
impl TSVGUseElement with y(self : Self) -> SVGAnimatedLength {
  svg_use_element_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_use_element_width_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.width"

///|
impl TSVGUseElement with width(self : Self) -> SVGAnimatedLength {
  svg_use_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_use_element_height_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.height"

///|
impl TSVGUseElement with height(self : Self) -> SVGAnimatedLength {
  svg_use_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_use_element_instance_root_ffi(obj : JsValue) -> SVGElement = "(obj) => obj.instanceRoot"

///|
impl TSVGUseElement with instance_root(self : Self) -> SVGElement {
  svg_use_element_instance_root_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_use_element_animated_instance_root_ffi(
  obj : JsValue,
) -> SVGElement = "(obj) => obj.animatedInstanceRoot"

///|
impl TSVGUseElement with animated_instance_root(self : Self) -> SVGElement {
  svg_use_element_animated_instance_root_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_use_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "(obj) => obj.href"

///|
impl TSVGUseElement with href(self : Self) -> SVGAnimatedString {
  svg_use_element_href_ffi(TJsValue::to_js(self))
}
