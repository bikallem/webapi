// Do not edit. This file is generated.
// MoonBit type: SVGUseElement
// Specifications: SVG.idl

/// [SVGUseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement)
#external
pub type SVGUseElement

pub impl TJsValue for SVGUseElement with to_js(self: SVGUseElement) -> JsValue = "%identity"

pub fn[T: TSVGUseElement] SVGUseElement::into(self : SVGUseElement) -> T = "%identity"

pub impl TSVGUseElement for SVGUseElement

pub impl TSVGGraphicsElement for SVGUseElement

pub impl TSVGElement for SVGUseElement

pub impl TElement for SVGUseElement

pub impl TNode for SVGUseElement

pub impl TEventTarget for SVGUseElement

/// [SVGUseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement) interface.
pub trait TSVGUseElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  instance_root(self : Self) -> SVGElement = _
  animated_instance_root(self : Self) -> SVGElement = _
  href(self : Self) -> SVGAnimatedString = _
}

/// [SVGUseElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/x)
impl TSVGUseElement with x(self : Self) -> SVGAnimatedLength {
  svg_use_element_x_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGUseElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/y)
impl TSVGUseElement with y(self : Self) -> SVGAnimatedLength {
  svg_use_element_y_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGUseElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/width)
impl TSVGUseElement with width(self : Self) -> SVGAnimatedLength {
  svg_use_element_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGUseElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/height)
impl TSVGUseElement with height(self : Self) -> SVGAnimatedLength {
  svg_use_element_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGUseElement.instanceRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/instanceRoot)
impl TSVGUseElement with instance_root(self : Self) -> SVGElement {
  svg_use_element_instance_root_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGUseElement.animatedInstanceRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/animatedInstanceRoot)
impl TSVGUseElement with animated_instance_root(self : Self) -> SVGElement {
  svg_use_element_animated_instance_root_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGUseElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/href)
impl TSVGUseElement with href(self : Self) -> SVGAnimatedString {
  svg_use_element_href_ffi(TJsValue::to_js(self)).unsafe_cast()
}