///|
#external
pub type SVGAnimatedPreserveAspectRatio

///|
pub impl TJsValue for SVGAnimatedPreserveAspectRatio with to_js(
  self : SVGAnimatedPreserveAspectRatio,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedPreserveAspectRatio] SVGAnimatedPreserveAspectRatio::into(
  self : SVGAnimatedPreserveAspectRatio,
) -> T = "%identity"

///|
pub impl TSVGAnimatedPreserveAspectRatio for SVGAnimatedPreserveAspectRatio

///|
pub trait TSVGAnimatedPreserveAspectRatio: TJsValue {
  base_val(self : Self) -> SVGPreserveAspectRatio = _
  anim_val(self : Self) -> SVGPreserveAspectRatio = _
}

///|
extern "js" fn svg_animated_preserve_aspect_ratio_base_val_ffi(
  obj : JsValue,
) -> SVGPreserveAspectRatio = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedPreserveAspectRatio with base_val(self : Self) -> SVGPreserveAspectRatio {
  svg_animated_preserve_aspect_ratio_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_preserve_aspect_ratio_anim_val_ffi(
  obj : JsValue,
) -> SVGPreserveAspectRatio = "(obj) => obj.animVal"

///|
impl TSVGAnimatedPreserveAspectRatio with anim_val(self : Self) -> SVGPreserveAspectRatio {
  svg_animated_preserve_aspect_ratio_anim_val_ffi(TJsValue::to_js(self))
}
