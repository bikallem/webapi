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
pub fn[T : TSVGAnimatedTransformList] SVGAnimatedTransformList::into(
  self : SVGAnimatedTransformList,
) -> T = "%identity"

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
