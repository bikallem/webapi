// Do not edit. This file is generated.
// MoonBit type: SVGGraphicsElement
// Specifications: SVG.idl

///|
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
pub trait TSVGGraphicsElement: TSVGElement {
  transform(self : Self) -> SVGAnimatedTransformList = _
  get_b_box(self : Self, options? : SVGBoundingBoxOptions) -> DOMRect = _
  get_ctm(self : Self) -> DOMMatrix? = _
  get_screen_ctm(self : Self) -> DOMMatrix? = _
  required_extensions(self : Self) -> SVGStringList = _
  system_language(self : Self) -> SVGStringList = _
}

///|
extern "js" fn svg_graphics_element_transform_ffi(
  obj : JsValue,
) -> SVGAnimatedTransformList = "(obj) => obj.transform"

///|
impl TSVGGraphicsElement with transform(self : Self) -> SVGAnimatedTransformList {
  svg_graphics_element_transform_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_graphics_element_get_b_box_ffi(
  obj : JsValue,
  options : JsValue,
) -> DOMRect = "(obj, options) => obj.getBBox(options)"

///|
impl TSVGGraphicsElement with get_b_box(
  self : Self,
  options? : SVGBoundingBoxOptions = SVGBoundingBoxOptions::empty(),
) -> DOMRect {
  svg_graphics_element_get_b_box_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn svg_graphics_element_get_ctm_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getCTM()"

///|
impl TSVGGraphicsElement with get_ctm(self : Self) -> DOMMatrix? {
  let result = svg_graphics_element_get_ctm_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn svg_graphics_element_get_screen_ctm_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getScreenCTM()"

///|
impl TSVGGraphicsElement with get_screen_ctm(self : Self) -> DOMMatrix? {
  let result = svg_graphics_element_get_screen_ctm_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn svg_graphics_element_required_extensions_ffi(
  obj : JsValue,
) -> SVGStringList = "(obj) => obj.requiredExtensions"

///|
impl TSVGGraphicsElement with required_extensions(self : Self) -> SVGStringList {
  svg_graphics_element_required_extensions_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_graphics_element_system_language_ffi(
  obj : JsValue,
) -> SVGStringList = "(obj) => obj.systemLanguage"

///|
impl TSVGGraphicsElement with system_language(self : Self) -> SVGStringList {
  svg_graphics_element_system_language_ffi(TJsValue::to_js(self))
}
