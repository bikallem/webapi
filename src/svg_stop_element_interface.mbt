///|
#external
pub type SVGStopElement

///|
pub impl TJsValue for SVGStopElement with to_js(self : SVGStopElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGStopElement] SVGStopElement::into(self : SVGStopElement) -> T = "%identity"

///|
pub impl TSVGStopElement for SVGStopElement

///|
pub impl TSVGElement for SVGStopElement

///|
pub impl TElement for SVGStopElement

///|
pub impl TNode for SVGStopElement

///|
pub impl TEventTarget for SVGStopElement

///|
pub trait TSVGStopElement: TSVGElement {
  offset(self : Self) -> SVGAnimatedNumber = _
}

///|
extern "js" fn svg_stop_element_offset_ffi(obj : JsValue) -> SVGAnimatedNumber = "(obj) => obj.offset"

///|
impl TSVGStopElement with offset(self : Self) -> SVGAnimatedNumber {
  svg_stop_element_offset_ffi(TJsValue::to_js(self))
}
