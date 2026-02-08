// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedInteger
// Specifications: SVG.idl

/// [SVGAnimatedInteger](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger)
#external
pub type SVGAnimatedInteger

pub impl TJsValue for SVGAnimatedInteger with to_js(self: SVGAnimatedInteger) -> JsValue = "%identity"

pub fn[T: TSVGAnimatedInteger] SVGAnimatedInteger::into(self : SVGAnimatedInteger) -> T = "%identity"

pub impl TSVGAnimatedInteger for SVGAnimatedInteger

/// [SVGAnimatedInteger](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger) interface.
pub trait TSVGAnimatedInteger: TJsValue {
  base_val(self : Self) -> Int = _
  set_base_val(self : Self, base_val : Int) -> Unit = _
  anim_val(self : Self) -> Int = _
}

/// [SVGAnimatedInteger.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger/baseVal)
impl TSVGAnimatedInteger with base_val(self : Self) -> Int {
  svg_animated_integer_base_val_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAnimatedInteger.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger/baseVal)
impl TSVGAnimatedInteger with set_base_val(self : Self, 
base_val : Int) -> Unit {
  svg_animated_integer_set_base_val_ffi(TJsValue::to_js(self), TJsValue::to_js(base_val))
}

/// [SVGAnimatedInteger.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger/animVal)
impl TSVGAnimatedInteger with anim_val(self : Self) -> Int {
  svg_animated_integer_anim_val_ffi(TJsValue::to_js(self)).unsafe_cast()
}