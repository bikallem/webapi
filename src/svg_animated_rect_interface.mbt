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
pub trait TSVGAnimatedRect: TJsValue {
  base_val(self : Self) -> DOMRect = _
  anim_val(self : Self) -> DOMRectReadOnly = _
}

///|
extern "js" fn svg_animated_rect_base_val_ffi(obj : JsValue) -> DOMRect = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedRect with base_val(self : Self) -> DOMRect {
  svg_animated_rect_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_rect_anim_val_ffi(obj : JsValue) -> DOMRectReadOnly = "(obj) => obj.animVal"

///|
impl TSVGAnimatedRect with anim_val(self : Self) -> DOMRectReadOnly {
  svg_animated_rect_anim_val_ffi(TJsValue::to_js(self))
}
