// Do not edit. This file is generated.
// MoonBit type: SVGTextPositioningElement
// Specifications: SVG.idl

///|
#external
pub type SVGTextPositioningElement

///|
pub impl TJsValue for SVGTextPositioningElement with to_js(
  self : SVGTextPositioningElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGTextPositioningElement] SVGTextPositioningElement::into(
  self : SVGTextPositioningElement,
) -> T = "%identity"

///|
pub impl TSVGTextPositioningElement for SVGTextPositioningElement

///|
pub impl TSVGTextContentElement for SVGTextPositioningElement

///|
pub impl TSVGGraphicsElement for SVGTextPositioningElement

///|
pub impl TSVGElement for SVGTextPositioningElement

///|
pub impl TElement for SVGTextPositioningElement

///|
pub impl TNode for SVGTextPositioningElement

///|
pub impl TEventTarget for SVGTextPositioningElement

///|
pub trait TSVGTextPositioningElement: TSVGTextContentElement {
  x(self : Self) -> SVGAnimatedLengthList = _
  y(self : Self) -> SVGAnimatedLengthList = _
  dx(self : Self) -> SVGAnimatedLengthList = _
  dy(self : Self) -> SVGAnimatedLengthList = _
  rotate(self : Self) -> SVGAnimatedNumberList = _
}

///|
extern "js" fn svg_text_positioning_element_x_ffi(
  obj : JsValue,
) -> SVGAnimatedLengthList = "(obj) => obj.x"

///|
impl TSVGTextPositioningElement with x(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_text_positioning_element_y_ffi(
  obj : JsValue,
) -> SVGAnimatedLengthList = "(obj) => obj.y"

///|
impl TSVGTextPositioningElement with y(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_text_positioning_element_dx_ffi(
  obj : JsValue,
) -> SVGAnimatedLengthList = "(obj) => obj.dx"

///|
impl TSVGTextPositioningElement with dx(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dx_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_text_positioning_element_dy_ffi(
  obj : JsValue,
) -> SVGAnimatedLengthList = "(obj) => obj.dy"

///|
impl TSVGTextPositioningElement with dy(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_text_positioning_element_rotate_ffi(
  obj : JsValue,
) -> SVGAnimatedNumberList = "(obj) => obj.rotate"

///|
impl TSVGTextPositioningElement with rotate(self : Self) -> SVGAnimatedNumberList {
  svg_text_positioning_element_rotate_ffi(TJsValue::to_js(self))
}
