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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAnimatedString] SVGAnimatedString::into(
  self : SVGAnimatedString,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGAnimatedString] SVGAnimatedString::unsafe_into(
  self : SVGAnimatedString,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGAnimatedString with constructor_name() {
  "SVGAnimatedString"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedString + HasConstructor] SVGAnimatedString::try_into(
  self : SVGAnimatedString,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGAnimatedString for SVGAnimatedString

///|
pub(open) trait TSVGAnimatedStringBaseVal: TJsValue {}

///|
pub impl TSVGAnimatedStringBaseVal for String

///|
pub impl TSVGAnimatedStringBaseVal for TrustedScriptURL

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
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAnimatedStringBaseVal + FromJsAny] SVGAnimatedStringBaseVal::into(
  self : SVGAnimatedStringBaseVal,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TSVGAnimatedStringBaseVal + FromJsAny] SVGAnimatedStringBaseVal::unsafe_into(
  self : SVGAnimatedStringBaseVal,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TSVGAnimatedStringBaseVal] SVGAnimatedStringBaseVal::from(
  value : T,
) -> SVGAnimatedStringBaseVal = "%identity"

///|
pub impl TSVGAnimatedStringBaseVal for SVGAnimatedStringBaseVal

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

///|
#cfg(target="js")
extern "js" fn svg_animated_string_base_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_string_base_val_ffi(obj : JsValue) -> SVGAnimatedStringBaseVal {
  svg_animated_string_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_string_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "(obj, baseVal) => { obj.baseVal = baseVal; }"

///|
#cfg(target="js")
extern "js" fn svg_animated_string_anim_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_string_anim_val_ffi(obj : JsValue) -> String {
  svg_animated_string_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_string_base_val_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAnimatedString" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_string_base_val_ffi(obj : JsValue) -> SVGAnimatedStringBaseVal {
  svg_animated_string_base_val_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_string_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "webapi_SVGAnimatedString" "set_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_string_anim_val_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAnimatedString" "get_animVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_string_anim_val_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_animated_string_anim_val_ffi_wasm(obj))
}
