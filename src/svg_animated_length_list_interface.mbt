// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedLengthList
// Specifications: SVG.idl

///|
/// [SVGAnimatedLengthList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList)
#external
pub type SVGAnimatedLengthList

///|
pub impl TJsValue for SVGAnimatedLengthList with to_js(
  self : SVGAnimatedLengthList,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedLengthList with from_js_any(value : JsAny) -> SVGAnimatedLengthList = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAnimatedLengthList] SVGAnimatedLengthList::into(
  self : SVGAnimatedLengthList,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGAnimatedLengthList] SVGAnimatedLengthList::unsafe_into(
  self : SVGAnimatedLengthList,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGAnimatedLengthList with constructor_name() {
  "SVGAnimatedLengthList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedLengthList + HasConstructor] SVGAnimatedLengthList::try_into(
  self : SVGAnimatedLengthList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGAnimatedLengthList for SVGAnimatedLengthList

///|
/// [SVGAnimatedLengthList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList) interface.
pub trait TSVGAnimatedLengthList: TJsValue {
  base_val(self : Self) -> SVGLengthList = _
  anim_val(self : Self) -> SVGLengthList = _
}

///|
/// [SVGAnimatedLengthList.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList/baseVal)
impl TSVGAnimatedLengthList with base_val(self : Self) -> SVGLengthList {
  svg_animated_length_list_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedLengthList.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList/animVal)
impl TSVGAnimatedLengthList with anim_val(self : Self) -> SVGLengthList {
  svg_animated_length_list_anim_val_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_animated_length_list_base_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_length_list_base_val_ffi(obj : JsValue) -> SVGLengthList {
  svg_animated_length_list_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_length_list_anim_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_length_list_anim_val_ffi(obj : JsValue) -> SVGLengthList {
  svg_animated_length_list_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_length_list_base_val_ffi(obj : JsValue) -> SVGLengthList = "webapi_SVGAnimatedLengthList" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_length_list_anim_val_ffi(obj : JsValue) -> SVGLengthList = "webapi_SVGAnimatedLengthList" "get_animVal"
