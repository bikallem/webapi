// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedNumber
// Specifications: SVG.idl

///|
#external
pub type SVGAnimatedNumber

///|
pub impl TJsValue for SVGAnimatedNumber with to_js(self : SVGAnimatedNumber) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedNumber] SVGAnimatedNumber::into(
  self : SVGAnimatedNumber,
) -> T = "%identity"

///|
pub impl TSVGAnimatedNumber for SVGAnimatedNumber

///|
pub trait TSVGAnimatedNumber: TJsValue {
  base_val(self : Self) -> Float = _
  set_base_val(self : Self, base_val : Float) -> Unit = _
  anim_val(self : Self) -> Float = _
}

///|
extern "js" fn svg_animated_number_base_val_ffi(obj : JsValue) -> Float = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedNumber with base_val(self : Self) -> Float {
  svg_animated_number_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_number_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "(obj, baseVal) => { obj.baseVal = base_val; }"

///|
impl TSVGAnimatedNumber with set_base_val(self : Self, base_val : Float) -> Unit {
  svg_animated_number_set_base_val_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(base_val),
  )
}

///|
extern "js" fn svg_animated_number_anim_val_ffi(obj : JsValue) -> Float = "(obj) => obj.animVal"

///|
impl TSVGAnimatedNumber with anim_val(self : Self) -> Float {
  svg_animated_number_anim_val_ffi(TJsValue::to_js(self))
}
