// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedNumber
// Specifications: SVG.idl

/// [SVGAnimatedNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber)
#external
pub type SVGAnimatedNumber

pub impl TJsValue for SVGAnimatedNumber with to_js(self: SVGAnimatedNumber) -> JsValue = "%identity"

pub impl FromJsAny for SVGAnimatedNumber with from_js_any(value : JsAny) -> SVGAnimatedNumber = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGAnimatedNumber] SVGAnimatedNumber::into(self : SVGAnimatedNumber) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGAnimatedNumber] SVGAnimatedNumber::unsafe_into(self : SVGAnimatedNumber) -> T = "%identity"

pub impl HasConstructor for SVGAnimatedNumber with constructor_name() { "SVGAnimatedNumber" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedNumber + HasConstructor] SVGAnimatedNumber::try_into(self : SVGAnimatedNumber) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGAnimatedNumber for SVGAnimatedNumber

/// [SVGAnimatedNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber) interface.
pub trait TSVGAnimatedNumber: TJsValue {
  base_val(self : Self) -> Float = _
  set_base_val(self : Self, base_val : Float) -> Unit = _
  anim_val(self : Self) -> Float = _
}

/// [SVGAnimatedNumber.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber/baseVal)
impl TSVGAnimatedNumber with base_val(self : Self) -> Float {
  svg_animated_number_base_val_ffi(TJsValue::to_js(self))
}

/// [SVGAnimatedNumber.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber/baseVal)
impl TSVGAnimatedNumber with set_base_val(self : Self, 
base_val : Float) -> Unit {
  svg_animated_number_set_base_val_ffi(TJsValue::to_js(self), TJsValue::to_js(base_val))
}

/// [SVGAnimatedNumber.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber/animVal)
impl TSVGAnimatedNumber with anim_val(self : Self) -> Float {
  svg_animated_number_anim_val_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_animated_number_base_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_number_base_val_ffi(obj: JsValue) -> Float {
  svg_animated_number_base_val_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_animated_number_set_base_val_ffi(obj: JsValue, base_val: JsValue) -> Unit = "(obj, baseVal) => { obj.baseVal = baseVal; }"

#cfg(target="js")
extern "js" fn svg_animated_number_anim_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_number_anim_val_ffi(obj: JsValue) -> Float {
  svg_animated_number_anim_val_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_animated_number_base_val_ffi(obj: JsValue) -> Float = "webapi_SVGAnimatedNumber" "get_baseVal"

#cfg(target="wasm-gc")
fn svg_animated_number_set_base_val_ffi(obj: JsValue, base_val: JsValue) -> Unit = "webapi_SVGAnimatedNumber" "set_baseVal"

#cfg(target="wasm-gc")
fn svg_animated_number_anim_val_ffi(obj: JsValue) -> Float = "webapi_SVGAnimatedNumber" "get_animVal"