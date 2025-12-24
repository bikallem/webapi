///|
#external
pub type SVGAnimatedLengthList

///|
pub impl TJsValue for SVGAnimatedLengthList with to_js(
  self : SVGAnimatedLengthList,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedLengthList] SVGAnimatedLengthList::into(
  self : SVGAnimatedLengthList,
) -> T = "%identity"

///|
pub impl TSVGAnimatedLengthList for SVGAnimatedLengthList

///|
pub trait TSVGAnimatedLengthList: TJsValue {
  base_val(self : Self) -> SVGLengthList = _
  anim_val(self : Self) -> SVGLengthList = _
}

///|
extern "js" fn svg_animated_length_list_base_val_ffi(
  obj : JsValue,
) -> SVGLengthList = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedLengthList with base_val(self : Self) -> SVGLengthList {
  svg_animated_length_list_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_length_list_anim_val_ffi(
  obj : JsValue,
) -> SVGLengthList = "(obj) => obj.animVal"

///|
impl TSVGAnimatedLengthList with anim_val(self : Self) -> SVGLengthList {
  svg_animated_length_list_anim_val_ffi(TJsValue::to_js(self))
}
