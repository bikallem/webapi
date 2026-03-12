// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedNumber
// Specifications: SVG.idl

/// [SVGAnimatedNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber)
#external
pub type SVGAnimatedNumber

pub impl TJsValue for SVGAnimatedNumber with to_js(self: SVGAnimatedNumber) -> JsValue = "%identity"

pub impl FromJsAny for SVGAnimatedNumber with from_js_any(value : JsAny) -> SVGAnimatedNumber = "%identity"

pub fn[T: TSVGAnimatedNumber] SVGAnimatedNumber::into(self : SVGAnimatedNumber) -> T = "%identity"

pub impl TSVGAnimatedNumber for SVGAnimatedNumber

/// [SVGAnimatedNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber) interface.
pub trait TSVGAnimatedNumber: TJsValue {
  base_val(self : Self) -> Float = _
  set_base_val(self : Self, base_val : Float) -> Unit = _
  anim_val(self : Self) -> Float = _
}

/// [SVGAnimatedNumber.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber/baseVal)
impl TSVGAnimatedNumber with base_val(self : Self) -> Float {
  svg_animated_number_base_val_ffi(TJsValue::to_js(self))
}

/// [SVGAnimatedNumber.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber/baseVal)
impl TSVGAnimatedNumber with set_base_val(self : Self, 
base_val : Float) -> Unit {
  svg_animated_number_set_base_val_ffi(TJsValue::to_js(self), TJsValue::to_js(base_val))
}

/// [SVGAnimatedNumber.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber/animVal)
impl TSVGAnimatedNumber with anim_val(self : Self) -> Float {
  svg_animated_number_anim_val_ffi(TJsValue::to_js(self))
}