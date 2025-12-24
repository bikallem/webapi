///|
#external
pub type SVGAnimatedNumberList

///|
pub impl TJsValue for SVGAnimatedNumberList with to_js(
  self : SVGAnimatedNumberList,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedNumberList] SVGAnimatedNumberList::into(
  self : SVGAnimatedNumberList,
) -> T = "%identity"

///|
pub impl TSVGAnimatedNumberList for SVGAnimatedNumberList

///|
pub trait TSVGAnimatedNumberList: TJsValue {
  base_val(self : Self) -> SVGNumberList = _
  anim_val(self : Self) -> SVGNumberList = _
}

///|
extern "js" fn svg_animated_number_list_base_val_ffi(
  obj : JsValue,
) -> SVGNumberList = "(obj) => obj.baseVal"

///|
impl TSVGAnimatedNumberList with base_val(self : Self) -> SVGNumberList {
  svg_animated_number_list_base_val_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_animated_number_list_anim_val_ffi(
  obj : JsValue,
) -> SVGNumberList = "(obj) => obj.animVal"

///|
impl TSVGAnimatedNumberList with anim_val(self : Self) -> SVGNumberList {
  svg_animated_number_list_anim_val_ffi(TJsValue::to_js(self))
}
