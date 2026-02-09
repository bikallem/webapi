// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedEnumeration
// Specifications: SVG.idl

///|
/// [SVGAnimatedEnumeration](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration)
#external
pub type SVGAnimatedEnumeration

///|
pub impl TJsValue for SVGAnimatedEnumeration with to_js(
  self : SVGAnimatedEnumeration,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedEnumeration] SVGAnimatedEnumeration::into(
  self : SVGAnimatedEnumeration,
) -> T = "%identity"

///|
pub impl TSVGAnimatedEnumeration for SVGAnimatedEnumeration

///|
/// [SVGAnimatedEnumeration](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration) interface.
pub trait TSVGAnimatedEnumeration: TJsValue {
  base_val(self : Self) -> UInt = _
  set_base_val(self : Self, base_val : UInt) -> Unit = _
  anim_val(self : Self) -> UInt = _
}

///|
/// [SVGAnimatedEnumeration.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration/baseVal)
impl TSVGAnimatedEnumeration with base_val(self : Self) -> UInt {
  svg_animated_enumeration_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedEnumeration.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration/baseVal)
impl TSVGAnimatedEnumeration with set_base_val(self : Self, base_val : UInt) -> Unit {
  svg_animated_enumeration_set_base_val_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(base_val),
  )
}

///|
/// [SVGAnimatedEnumeration.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration/animVal)
impl TSVGAnimatedEnumeration with anim_val(self : Self) -> UInt {
  svg_animated_enumeration_anim_val_ffi(TJsValue::to_js(self))
}
