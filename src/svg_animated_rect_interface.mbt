// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedRect
// Specifications: SVG.idl

/// [SVGAnimatedRect](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect)
#external
pub type SVGAnimatedRect

pub impl TJsValue for SVGAnimatedRect with to_js(self: SVGAnimatedRect) -> JsValue = "%identity"

pub fn[T: TSVGAnimatedRect] SVGAnimatedRect::into(self : SVGAnimatedRect) -> T = "%identity"

pub impl TSVGAnimatedRect for SVGAnimatedRect

/// [SVGAnimatedRect](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect) interface.
pub trait TSVGAnimatedRect: TJsValue {
  base_val(self : Self) -> DOMRect = _
  anim_val(self : Self) -> DOMRectReadOnly = _
}

/// [SVGAnimatedRect.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect/baseVal)
impl TSVGAnimatedRect with base_val(self : Self) -> DOMRect {
  svg_animated_rect_base_val_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAnimatedRect.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect/animVal)
impl TSVGAnimatedRect with anim_val(self : Self) -> DOMRectReadOnly {
  svg_animated_rect_anim_val_ffi(TJsValue::to_js(self)).unsafe_cast()
}