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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAnimatedNumberList] SVGAnimatedNumberList::into(
  self : SVGAnimatedNumberList,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGAnimatedNumberList] SVGAnimatedNumberList::unsafe_into(
  self : SVGAnimatedNumberList,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGAnimatedNumberList with constructor_name() {
  "SVGAnimatedNumberList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedNumberList + HasConstructor] SVGAnimatedNumberList::try_into(
  self : SVGAnimatedNumberList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn svg_animated_number_list_base_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_number_list_base_val_ffi(obj : JsValue) -> SVGNumberList {
  svg_animated_number_list_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_number_list_anim_val_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_number_list_anim_val_ffi(obj : JsValue) -> SVGNumberList {
  svg_animated_number_list_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_number_list_base_val_ffi(obj : JsValue) -> SVGNumberList = "webapi_SVGAnimatedNumberList" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_number_list_anim_val_ffi(obj : JsValue) -> SVGNumberList = "webapi_SVGAnimatedNumberList" "get_animVal"
