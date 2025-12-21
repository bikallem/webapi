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
  get_b_box(self : Self, options? : SVGBoundingBoxOptions) -> DOMRect = _
  get_ctm(self : Self) -> DOMMatrix = _
  get_screen_ctm(self : Self) -> DOMMatrix = _
}

///|
extern "js" fn svg_graphics_element_get_b_box_ffi(
  obj : JsValue,
  options : JsValue,
) -> DOMRect = "(obj, options) => obj.getBBox(obj, options)"

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
extern "js" fn svg_graphics_element_get_ctm_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.getCTM(obj)"

///|
impl TSVGGraphicsElement with get_ctm(self : Self) -> DOMMatrix {
  svg_graphics_element_get_ctm_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_graphics_element_get_screen_ctm_ffi(
  obj : JsValue,
) -> DOMMatrix = "(obj) => obj.getScreenCTM(obj)"

///|
impl TSVGGraphicsElement with get_screen_ctm(self : Self) -> DOMMatrix {
  svg_graphics_element_get_screen_ctm_ffi(TJsValue::to_js(self))
}
