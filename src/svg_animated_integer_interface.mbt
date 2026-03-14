// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedInteger
// Specifications: SVG.idl

///|
/// [SVGAnimatedInteger](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger)
#external
pub type SVGAnimatedInteger

///|
pub impl TJsValue for SVGAnimatedInteger with to_js(self : SVGAnimatedInteger) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAnimatedInteger with from_js_any(value : JsAny) -> SVGAnimatedInteger = "%identity"

///|
pub fn[T : TSVGAnimatedInteger] SVGAnimatedInteger::into(
  self : SVGAnimatedInteger,
) -> T = "%identity"

///|
pub impl TSVGAnimatedInteger for SVGAnimatedInteger

///|
/// [SVGAnimatedInteger](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger) interface.
pub trait TSVGAnimatedInteger: TJsValue {
  base_val(self : Self) -> Int = _
  set_base_val(self : Self, base_val : Int) -> Unit = _
  anim_val(self : Self) -> Int = _
}

///|
/// [SVGAnimatedInteger.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger/baseVal)
impl TSVGAnimatedInteger with base_val(self : Self) -> Int {
  svg_animated_integer_base_val_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAnimatedInteger.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger/baseVal)
impl TSVGAnimatedInteger with set_base_val(self : Self, base_val : Int) -> Unit {
  svg_animated_integer_set_base_val_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(base_val),
  )
}

///|
/// [SVGAnimatedInteger.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger/animVal)
impl TSVGAnimatedInteger with anim_val(self : Self) -> Int {
  svg_animated_integer_anim_val_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_animated_integer_base_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_integer_base_val_ffi(obj : JsValue) -> Int {
  svg_animated_integer_base_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_animated_integer_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "(obj, baseVal) => { obj.baseVal = baseVal; }"

///|
#cfg(target="js")
extern "js" fn svg_animated_integer_anim_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_integer_anim_val_ffi(obj : JsValue) -> Int {
  svg_animated_integer_anim_val_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_animated_integer_base_val_ffi(obj : JsValue) -> Int = "webapi_SVGAnimatedInteger" "get_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_integer_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "webapi_SVGAnimatedInteger" "set_baseVal"

///|
#cfg(target="wasm-gc")
fn svg_animated_integer_anim_val_ffi(obj : JsValue) -> Int = "webapi_SVGAnimatedInteger" "get_animVal"
