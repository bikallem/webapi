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
pub impl FromJsAny for SVGAnimatedString with from_js_any(value : JsAny) -> SVGAnimatedString = "%identity"

///|
pub fn[T : TSVGAnimatedString] SVGAnimatedString::into(
  self : SVGAnimatedString,
) -> T = "%identity"

///|
pub impl TSVGAnimatedString for SVGAnimatedString

///|
#external
pub type SVGAnimatedStringBaseVal

///|
pub impl TJsValue for SVGAnimatedStringBaseVal with to_js(
  self : SVGAnimatedStringBaseVal,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedStringBaseVal with from_js_any(value : JsAny) -> SVGAnimatedStringBaseVal = "%identity"

///|
pub fn[T : TSVGAnimatedStringBaseVal + FromJsAny] SVGAnimatedStringBaseVal::into(
  self : SVGAnimatedStringBaseVal,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TSVGAnimatedStringBaseVal] SVGAnimatedStringBaseVal::from(
  value : T,
) -> SVGAnimatedStringBaseVal = "%identity"

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
