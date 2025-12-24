///|
#external
pub type SVGForeignObjectElement

///|
pub impl TJsValue for SVGForeignObjectElement with to_js(
  self : SVGForeignObjectElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGForeignObjectElement] SVGForeignObjectElement::into(
  self : SVGForeignObjectElement,
) -> T = "%identity"

///|
pub impl TSVGForeignObjectElement for SVGForeignObjectElement

///|
pub impl TSVGGraphicsElement for SVGForeignObjectElement

///|
pub impl TSVGElement for SVGForeignObjectElement

///|
pub impl TElement for SVGForeignObjectElement

///|
pub impl TNode for SVGForeignObjectElement

///|
pub impl TEventTarget for SVGForeignObjectElement

///|
pub trait TSVGForeignObjectElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
}

///|
extern "js" fn svg_foreign_object_element_x_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.x"

///|
impl TSVGForeignObjectElement with x(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_foreign_object_element_y_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.y"

///|
impl TSVGForeignObjectElement with y(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_foreign_object_element_width_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.width"

///|
impl TSVGForeignObjectElement with width(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_foreign_object_element_height_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.height"

///|
impl TSVGForeignObjectElement with height(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_height_ffi(TJsValue::to_js(self))
}
