// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedTransformList
// Specifications: SVG.idl

///|
/// [SVGAnimatedTransformList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList)
#external
pub type SVGAnimatedTransformList

///|
pub impl TJsValue for SVGAnimatedTransformList with to_js(
  self : SVGAnimatedTransformList,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedTransformList with from_js_any(value : JsAny) -> SVGAnimatedTransformList = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAnimatedTransformList] SVGAnimatedTransformList::into(
  self : SVGAnimatedTransformList,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGAnimatedTransformList] SVGAnimatedTransformList::unsafe_into(
  self : SVGAnimatedTransformList,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGAnimatedTransformList with constructor_name() {
  "SVGAnimatedTransformList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedTransformList + HasConstructor] SVGAnimatedTransformList::try_into(
  self : SVGAnimatedTransformList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGAnimatedTransformList for SVGAnimatedTransformList

///|
/// [SVGAnimatedTransformList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList) interface.
pub trait TSVGAnimatedTransformList: TJsValue {
  base_val(self : Self) -> SVGTransformList = _
  anim_val(self : Self) -> SVGTransformList = _
}

///|
/// [SVGAnimatedTransformList.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList/baseVal)
impl TSVGAnimatedTransformList with base_val(self : Self) -> SVGTransformList {
  svg_animated_transform_list_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedTransformList.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList/animVal)
impl TSVGAnimatedTransformList with anim_val(self : Self) -> SVGTransformList {
  svg_animated_transform_list_anim_val_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_animated_transform_list_base_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_transform_list_base_val_ffi(obj : JsValue) -> SVGTransformList {
  svg_animated_transform_list_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_transform_list_anim_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_transform_list_anim_val_ffi(obj : JsValue) -> SVGTransformList {
  svg_animated_transform_list_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_transform_list_base_val_ffi(obj : JsValue) -> SVGTransformList = "webapi_SVGAnimatedTransformList" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_transform_list_anim_val_ffi(obj : JsValue) -> SVGTransformList = "webapi_SVGAnimatedTransformList" "get_animVal"
