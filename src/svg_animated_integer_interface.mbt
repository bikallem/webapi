// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedInteger
// Specifications: SVG.idl

///|
#external
pub type SVGAnimatedInteger

///|
pub impl TJsValue for SVGAnimatedInteger with to_js(self : SVGAnimatedInteger) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedInteger] SVGAnimatedInteger::into(
  self : SVGAnimatedInteger,
) -> T = "%identity"

///|
pub impl TSVGAnimatedInteger for SVGAnimatedInteger

///|
pub trait TSVGAnimatedInteger: TJsValue {
  base_val(self : Self) -> Int = _
  set_base_val(self : Self, base_val : Int) -> Unit = _
  anim_val(self : Self) -> Int = _
}

///|
extern "js" fn svg_animated_integer_base_val_ffi(obj : JsValue) -> Int = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedInteger with base_val(self : Self) -> Int {
  svg_animated_integer_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_integer_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "(obj, baseVal) => { obj.baseVal = base_val; }"

///|
impl TSVGAnimatedInteger with set_base_val(self : Self, base_val : Int) -> Unit {
  svg_animated_integer_set_base_val_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(base_val),
  )
}

///|
extern "js" fn svg_animated_integer_anim_val_ffi(obj : JsValue) -> Int = "(obj) => obj.animVal"

///|
impl TSVGAnimatedInteger with anim_val(self : Self) -> Int {
  svg_animated_integer_anim_val_ffi(TJsValue::to_js(self))
}
