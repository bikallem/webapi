// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedAngle
// Specifications: SVG.idl

///|
/// [SVGAnimatedAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle)
#external
pub type SVGAnimatedAngle

///|
pub impl TJsValue for SVGAnimatedAngle with to_js(self : SVGAnimatedAngle) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedAngle with from_js_any(value : JsAny) -> SVGAnimatedAngle = "%identity"

///|
pub fn[T : TSVGAnimatedAngle] SVGAnimatedAngle::into(
  self : SVGAnimatedAngle,
) -> T = "%identity"

///|
pub impl TSVGAnimatedAngle for SVGAnimatedAngle

///|
/// [SVGAnimatedAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle) interface.
pub trait TSVGAnimatedAngle: TJsValue {
  base_val(self : Self) -> SVGAngle = _
  anim_val(self : Self) -> SVGAngle = _
}

///|
/// [SVGAnimatedAngle.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle/baseVal)
impl TSVGAnimatedAngle with base_val(self : Self) -> SVGAngle {
  svg_animated_angle_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedAngle.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle/animVal)
impl TSVGAnimatedAngle with anim_val(self : Self) -> SVGAngle {
  svg_animated_angle_anim_val_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_animated_angle_base_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_angle_base_val_ffi(obj : JsValue) -> SVGAngle {
  svg_animated_angle_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_angle_anim_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_angle_anim_val_ffi(obj : JsValue) -> SVGAngle {
  svg_animated_angle_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_angle_base_val_ffi(obj : JsValue) -> SVGAngle = "webapi_SVGAnimatedAngle" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_angle_anim_val_ffi(obj : JsValue) -> SVGAngle = "webapi_SVGAnimatedAngle" "get_animVal"
