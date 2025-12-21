///|
#external
pub type SVGElement

///|
pub impl TJsValue for SVGElement with to_js(self : SVGElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGElement] SVGElement::into(self : SVGElement) -> T = "%identity"

///|
pub impl TSVGElement for SVGElement

///|
pub impl TElement for SVGElement

///|
pub impl TNode for SVGElement

///|
pub impl TEventTarget for SVGElement

///|
pub trait TSVGElement: TElement {
  focus(self : Self, options? : FocusOptions) -> Unit = _
  blur(self : Self) -> Unit = _
}

///|
extern "js" fn svg_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "(obj, options) => obj.focus(obj, options)"

///|
impl TSVGElement with focus(
  self : Self,
  options? : FocusOptions = FocusOptions::empty(),
) -> Unit {
  svg_element_focus_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn svg_element_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur(obj)"

///|
impl TSVGElement with blur(self : Self) -> Unit {
  svg_element_blur_ffi(TJsValue::to_js(self))
}
