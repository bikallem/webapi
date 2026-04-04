// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedRect
// Specifications: SVG.idl

///|
/// [SVGAnimatedRect](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect)
#external
pub type SVGAnimatedRect

///|
pub impl TJsValue for SVGAnimatedRect with to_js(self : SVGAnimatedRect) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedRect with from_js_any(value : JsAny) -> SVGAnimatedRect = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAnimatedRect] SVGAnimatedRect::into(self : SVGAnimatedRect) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGAnimatedRect] SVGAnimatedRect::unsafe_into(
  self : SVGAnimatedRect,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGAnimatedRect with constructor_name() {
  "SVGAnimatedRect"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedRect + HasConstructor] SVGAnimatedRect::try_into(
  self : SVGAnimatedRect,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGAnimatedRect for SVGAnimatedRect

///|
/// [SVGAnimatedRect](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect) interface.
pub trait TSVGAnimatedRect: TJsValue {
  base_val(self : Self) -> DOMRect = _
  anim_val(self : Self) -> DOMRectReadOnly = _
}

///|
/// [SVGAnimatedRect.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect/baseVal)
impl TSVGAnimatedRect with base_val(self : Self) -> DOMRect {
  svg_animated_rect_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedRect.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect/animVal)
impl TSVGAnimatedRect with anim_val(self : Self) -> DOMRectReadOnly {
  svg_animated_rect_anim_val_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_animated_rect_base_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_rect_base_val_ffi(obj : JsValue) -> DOMRect {
  svg_animated_rect_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_rect_anim_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_rect_anim_val_ffi(obj : JsValue) -> DOMRectReadOnly {
  svg_animated_rect_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_rect_base_val_ffi(obj : JsValue) -> DOMRect = "webapi_SVGAnimatedRect" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_rect_anim_val_ffi(obj : JsValue) -> DOMRectReadOnly = "webapi_SVGAnimatedRect" "get_animVal"
