// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedAngle
// Specifications: SVG.idl

///|
#external
pub type SVGAnimatedAngle

///|
pub impl TJsValue for SVGAnimatedAngle with to_js(self : SVGAnimatedAngle) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedAngle] SVGAnimatedAngle::into(
  self : SVGAnimatedAngle,
) -> T = "%identity"

///|
pub impl TSVGAnimatedAngle for SVGAnimatedAngle

///|
pub trait TSVGAnimatedAngle: TJsValue {
  base_val(self : Self) -> SVGAngle = _
  anim_val(self : Self) -> SVGAngle = _
}

///|
extern "js" fn svg_animated_angle_base_val_ffi(obj : JsValue) -> SVGAngle = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedAngle with base_val(self : Self) -> SVGAngle {
  svg_animated_angle_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_angle_anim_val_ffi(obj : JsValue) -> SVGAngle = "(obj) => obj.animVal"

///|
impl TSVGAnimatedAngle with anim_val(self : Self) -> SVGAngle {
  svg_animated_angle_anim_val_ffi(TJsValue::to_js(self))
}
