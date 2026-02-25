// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedNumberList
// Specifications: SVG.idl

///|
/// [SVGAnimatedNumberList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList)
#external
pub type SVGAnimatedNumberList

///|
pub impl TJsValue for SVGAnimatedNumberList with to_js(
  self : SVGAnimatedNumberList,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedNumberList with from_js_any(value : JsAny) -> SVGAnimatedNumberList = "%identity"

///|
pub fn[T : TSVGAnimatedNumberList] SVGAnimatedNumberList::into(
  self : SVGAnimatedNumberList,
) -> T = "%identity"

///|
pub impl TSVGAnimatedNumberList for SVGAnimatedNumberList

///|
/// [SVGAnimatedNumberList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList) interface.
pub trait TSVGAnimatedNumberList: TJsValue {
  base_val(self : Self) -> SVGNumberList = _
  anim_val(self : Self) -> SVGNumberList = _
}

///|
/// [SVGAnimatedNumberList.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList/baseVal)
impl TSVGAnimatedNumberList with base_val(self : Self) -> SVGNumberList {
  svg_animated_number_list_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedNumberList.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList/animVal)
impl TSVGAnimatedNumberList with anim_val(self : Self) -> SVGNumberList {
  svg_animated_number_list_anim_val_ffi(TJsValue::to_js(self))
}
