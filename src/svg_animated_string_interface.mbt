// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedString
// Specifications: SVG.idl

///|
/// [SVGAnimatedString](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString)
#external
pub type SVGAnimatedString

///|
pub impl TJsValue for SVGAnimatedString with to_js(self : SVGAnimatedString) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedString] SVGAnimatedString::into(
  self : SVGAnimatedString,
) -> T = "%identity"

///|
pub impl TSVGAnimatedString for SVGAnimatedString

///|
/// [SVGAnimatedStringBaseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedStringBaseVal)
#external
pub type SVGAnimatedStringBaseVal

///|
pub fn[T : TSVGAnimatedStringBaseVal] SVGAnimatedStringBaseVal::into(
  self : SVGAnimatedStringBaseVal,
) -> T = "%identity"

///|
pub impl TSVGAnimatedStringBaseVal for SVGAnimatedStringBaseVal with to_js(
  self : SVGAnimatedStringBaseVal,
) -> JsValue = "%identity"

///|
pub(open) trait TSVGAnimatedStringBaseVal {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSVGAnimatedStringBaseVal for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TSVGAnimatedStringBaseVal for TrustedScriptURL with to_js(
  self : TrustedScriptURL,
) -> JsValue = "%identity"

///|
/// [SVGAnimatedString](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString) interface.
pub trait TSVGAnimatedString: TJsValue {
  base_val(self : Self) -> SVGAnimatedStringBaseVal = _
  set_base_val(self : Self, base_val : &TSVGAnimatedStringBaseVal) -> Unit = _
  anim_val(self : Self) -> String = _
}

///|
/// [SVGAnimatedString.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString/baseVal)
impl TSVGAnimatedString with base_val(self : Self) -> SVGAnimatedStringBaseVal {
  svg_animated_string_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedString.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString/baseVal)
impl TSVGAnimatedString with set_base_val(
  self : Self,
  base_val : &TSVGAnimatedStringBaseVal,
) -> Unit {
  svg_animated_string_set_base_val_ffi(TJsValue::to_js(self), base_val.to_js())
}

///|
/// [SVGAnimatedString.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString/animVal)
impl TSVGAnimatedString with anim_val(self : Self) -> String {
  svg_animated_string_anim_val_ffi(TJsValue::to_js(self))
}
