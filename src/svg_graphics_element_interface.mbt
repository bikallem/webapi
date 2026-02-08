// Do not edit. This file is generated.
// MoonBit type: SVGGraphicsElement
// Specifications: SVG.idl

///|
/// [SVGGraphicsElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement)
#external
pub type SVGGraphicsElement

///|
pub impl TJsValue for SVGGraphicsElement with to_js(self : SVGGraphicsElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGGraphicsElement] SVGGraphicsElement::into(
  self : SVGGraphicsElement,
) -> T = "%identity"

///|
pub impl TSVGGraphicsElement for SVGGraphicsElement

///|
pub impl TSVGElement for SVGGraphicsElement

///|
pub impl TElement for SVGGraphicsElement

///|
pub impl TNode for SVGGraphicsElement

///|
pub impl TEventTarget for SVGGraphicsElement

///|
/// [SVGGraphicsElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement) interface.
pub trait TSVGGraphicsElement: TSVGElement {
  transform(self : Self) -> SVGAnimatedTransformList = _
  get_b_box(self : Self, options? : SVGBoundingBoxOptions) -> DOMRect = _
  get_ctm(self : Self) -> DOMMatrix? = _
  get_screen_ctm(self : Self) -> DOMMatrix? = _
  required_extensions(self : Self) -> SVGStringList = _
  system_language(self : Self) -> SVGStringList = _
}

///|
/// [SVGGraphicsElement.transform](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/transform)
impl TSVGGraphicsElement with transform(self : Self) -> SVGAnimatedTransformList {
  svg_graphics_element_transform_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [SVGGraphicsElement.getBBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/getBBox)
impl TSVGGraphicsElement with get_b_box(
  self : Self,
  options? : SVGBoundingBoxOptions = SVGBoundingBoxOptions::empty(),
) -> DOMRect {
  svg_graphics_element_get_b_box_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
/// [SVGGraphicsElement.getCTM](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/getCTM)
impl TSVGGraphicsElement with get_ctm(self : Self) -> DOMMatrix? {
  let result = svg_graphics_element_get_ctm_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [SVGGraphicsElement.getScreenCTM](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/getScreenCTM)
impl TSVGGraphicsElement with get_screen_ctm(self : Self) -> DOMMatrix? {
  let result = svg_graphics_element_get_screen_ctm_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [SVGGraphicsElement.requiredExtensions](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/requiredExtensions)
impl TSVGGraphicsElement with required_extensions(self : Self) -> SVGStringList {
  svg_graphics_element_required_extensions_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [SVGGraphicsElement.systemLanguage](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/systemLanguage)
impl TSVGGraphicsElement with system_language(self : Self) -> SVGStringList {
  svg_graphics_element_system_language_ffi(TJsValue::to_js(self)).unsafe_cast()
}
