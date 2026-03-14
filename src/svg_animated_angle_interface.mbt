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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAnimatedAngle] SVGAnimatedAngle::into(
  self : SVGAnimatedAngle,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGAnimatedAngle] SVGAnimatedAngle::unsafe_into(
  self : SVGAnimatedAngle,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGAnimatedAngle with constructor_name() {
  "SVGAnimatedAngle"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedAngle + HasConstructor] SVGAnimatedAngle::try_into(
  self : SVGAnimatedAngle,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
