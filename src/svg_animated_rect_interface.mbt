///|
#external
pub type SVGAnimatedRect

///|
pub impl TJsValue for SVGAnimatedRect with to_js(self : SVGAnimatedRect) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedRect] SVGAnimatedRect::into(self : SVGAnimatedRect) -> T = "%identity"

///|
pub impl TSVGAnimatedRect for SVGAnimatedRect

///|
pub trait TSVGAnimatedRect: TJsValue {}
