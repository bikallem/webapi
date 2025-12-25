// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedLength
// Specifications: SVG.idl

///|
#external
pub type SVGAnimatedLength

///|
pub impl TJsValue for SVGAnimatedLength with to_js(self : SVGAnimatedLength) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedLength] SVGAnimatedLength::into(
  self : SVGAnimatedLength,
) -> T = "%identity"

///|
pub impl TSVGAnimatedLength for SVGAnimatedLength

///|
pub trait TSVGAnimatedLength: TJsValue {
  base_val(self : Self) -> SVGLength = _
  anim_val(self : Self) -> SVGLength = _
}

///|
extern "js" fn svg_animated_length_base_val_ffi(obj : JsValue) -> SVGLength = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedLength with base_val(self : Self) -> SVGLength {
  svg_animated_length_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_length_anim_val_ffi(obj : JsValue) -> SVGLength = "(obj) => obj.animVal"

///|
impl TSVGAnimatedLength with anim_val(self : Self) -> SVGLength {
  svg_animated_length_anim_val_ffi(TJsValue::to_js(self))
}
