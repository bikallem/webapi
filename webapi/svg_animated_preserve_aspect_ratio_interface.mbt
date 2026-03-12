// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedPreserveAspectRatio
// Specifications: SVG.idl

///|
/// [SVGAnimatedPreserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio)
#external
pub type SVGAnimatedPreserveAspectRatio

///|
pub impl TJsValue for SVGAnimatedPreserveAspectRatio with to_js(
  self : SVGAnimatedPreserveAspectRatio,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedPreserveAspectRatio with from_js_any(
  value : JsAny,
) -> SVGAnimatedPreserveAspectRatio = "%identity"

///|
pub fn[T : TSVGAnimatedPreserveAspectRatio] SVGAnimatedPreserveAspectRatio::into(
  self : SVGAnimatedPreserveAspectRatio,
) -> T = "%identity"

///|
pub impl TSVGAnimatedPreserveAspectRatio for SVGAnimatedPreserveAspectRatio

///|
/// [SVGAnimatedPreserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio) interface.
pub trait TSVGAnimatedPreserveAspectRatio: TJsValue {
  base_val(self : Self) -> SVGPreserveAspectRatio = _
  anim_val(self : Self) -> SVGPreserveAspectRatio = _
}

///|
/// [SVGAnimatedPreserveAspectRatio.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio/baseVal)
impl TSVGAnimatedPreserveAspectRatio with base_val(self : Self) -> SVGPreserveAspectRatio {
  svg_animated_preserve_aspect_ratio_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedPreserveAspectRatio.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio/animVal)
impl TSVGAnimatedPreserveAspectRatio with anim_val(self : Self) -> SVGPreserveAspectRatio {
  svg_animated_preserve_aspect_ratio_anim_val_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_animated_preserve_aspect_ratio_base_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_preserve_aspect_ratio_base_val_ffi(
  obj : JsValue,
) -> SVGPreserveAspectRatio {
  svg_animated_preserve_aspect_ratio_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_preserve_aspect_ratio_anim_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_preserve_aspect_ratio_anim_val_ffi(
  obj : JsValue,
) -> SVGPreserveAspectRatio {
  svg_animated_preserve_aspect_ratio_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_preserve_aspect_ratio_base_val_ffi(
  obj : JsValue,
) -> SVGPreserveAspectRatio = "webapi_SVGAnimatedPreserveAspectRatio" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_preserve_aspect_ratio_anim_val_ffi(
  obj : JsValue,
) -> SVGPreserveAspectRatio = "webapi_SVGAnimatedPreserveAspectRatio" "get_animVal"
