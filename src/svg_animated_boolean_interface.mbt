// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedBoolean
// Specifications: SVG.idl

///|
/// [SVGAnimatedBoolean](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean)
#external
pub type SVGAnimatedBoolean

///|
pub impl TJsValue for SVGAnimatedBoolean with to_js(self : SVGAnimatedBoolean) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedBoolean] SVGAnimatedBoolean::into(
  self : SVGAnimatedBoolean,
) -> T = "%identity"

///|
pub impl TSVGAnimatedBoolean for SVGAnimatedBoolean

///|
/// [SVGAnimatedBoolean](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean) interface.
pub trait TSVGAnimatedBoolean: TJsValue {
  base_val(self : Self) -> Bool = _
  set_base_val(self : Self, base_val : Bool) -> Unit = _
  anim_val(self : Self) -> Bool = _
}

///|
/// [SVGAnimatedBoolean.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean/baseVal)
impl TSVGAnimatedBoolean with base_val(self : Self) -> Bool {
  svg_animated_boolean_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedBoolean.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean/baseVal)
impl TSVGAnimatedBoolean with set_base_val(self : Self, base_val : Bool) -> Unit {
  svg_animated_boolean_set_base_val_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(base_val),
  )
}

///|
/// [SVGAnimatedBoolean.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean/animVal)
impl TSVGAnimatedBoolean with anim_val(self : Self) -> Bool {
  svg_animated_boolean_anim_val_ffi(TJsValue::to_js(self))
}
