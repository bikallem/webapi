///|
#external
pub type SVGAnimatedTransformList

///|
pub impl TJsValue for SVGAnimatedTransformList with to_js(
  self : SVGAnimatedTransformList,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedTransformList] SVGAnimatedTransformList::into(
  self : SVGAnimatedTransformList,
) -> T = "%identity"

///|
pub impl TSVGAnimatedTransformList for SVGAnimatedTransformList

///|
pub trait TSVGAnimatedTransformList: TJsValue {
  base_val(self : Self) -> SVGTransformList = _
  anim_val(self : Self) -> SVGTransformList = _
}

///|
extern "js" fn svg_animated_transform_list_base_val_ffi(
  obj : JsValue,
) -> SVGTransformList = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedTransformList with base_val(self : Self) -> SVGTransformList {
  svg_animated_transform_list_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_transform_list_anim_val_ffi(
  obj : JsValue,
) -> SVGTransformList = "(obj) => obj.animVal"

///|
impl TSVGAnimatedTransformList with anim_val(self : Self) -> SVGTransformList {
  svg_animated_transform_list_anim_val_ffi(TJsValue::to_js(self))
}
