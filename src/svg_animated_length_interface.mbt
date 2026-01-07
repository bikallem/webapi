// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedLength
// Specifications: SVG.idl

///|
/// [SVGAnimatedLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength)
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
/// [SVGAnimatedLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength) interface.
pub trait TSVGAnimatedLength: TJsValue {
  base_val(self : Self) -> SVGLength = _
  anim_val(self : Self) -> SVGLength = _
}

///|
extern "js" fn svg_animated_length_base_val_ffi(obj : JsValue) -> SVGLength = "(obj) => obj.baseVal"

///|
/// [SVGAnimatedLength.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength/baseVal)
impl TSVGAnimatedLength with base_val(self : Self) -> SVGLength {
  svg_animated_length_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_length_anim_val_ffi(obj : JsValue) -> SVGLength = "(obj) => obj.animVal"

///|
/// [SVGAnimatedLength.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength/animVal)
impl TSVGAnimatedLength with anim_val(self : Self) -> SVGLength {
  svg_animated_length_anim_val_ffi(TJsValue::to_js(self))
}
