// Do not edit. This file is generated.
// MoonBit type: SVGAnimatedBoolean
// Specifications: SVG.idl

/// [SVGAnimatedBoolean](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean)
#external
pub type SVGAnimatedBoolean

pub impl TJsValue for SVGAnimatedBoolean with to_js(self: SVGAnimatedBoolean) -> JsValue = "%identity"

pub impl FromJsAny for SVGAnimatedBoolean with from_js_any(value : JsAny) -> SVGAnimatedBoolean = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGAnimatedBoolean] SVGAnimatedBoolean::into(self : SVGAnimatedBoolean) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGAnimatedBoolean] SVGAnimatedBoolean::unsafe_into(self : SVGAnimatedBoolean) -> T = "%identity"

pub impl HasConstructor for SVGAnimatedBoolean with constructor_name() { "SVGAnimatedBoolean" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAnimatedBoolean + HasConstructor] SVGAnimatedBoolean::try_into(self : SVGAnimatedBoolean) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGAnimatedBoolean for SVGAnimatedBoolean

/// [SVGAnimatedBoolean](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean) interface.
pub trait TSVGAnimatedBoolean: TJsValue {
  base_val(self : Self) -> Bool = _
  set_base_val(self : Self, base_val : Bool) -> Unit = _
  anim_val(self : Self) -> Bool = _
}

/// [SVGAnimatedBoolean.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean/baseVal)
impl TSVGAnimatedBoolean with base_val(self : Self) -> Bool {
  svg_animated_boolean_base_val_ffi(TJsValue::to_js(self))
}

/// [SVGAnimatedBoolean.baseVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean/baseVal)
impl TSVGAnimatedBoolean with set_base_val(self : Self, 
base_val : Bool) -> Unit {
  svg_animated_boolean_set_base_val_ffi(TJsValue::to_js(self), TJsValue::to_js(base_val))
}

/// [SVGAnimatedBoolean.animVal](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean/animVal)
impl TSVGAnimatedBoolean with anim_val(self : Self) -> Bool {
  svg_animated_boolean_anim_val_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_animated_boolean_base_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
#cfg(target="js")
fn svg_animated_boolean_base_val_ffi(obj: JsValue) -> Bool {
  svg_animated_boolean_base_val_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_animated_boolean_set_base_val_ffi(obj: JsValue, base_val: JsValue) -> Unit = "(obj, baseVal) => { obj.baseVal = baseVal; }"

#cfg(target="js")
extern "js" fn svg_animated_boolean_anim_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.animVal"

///|
#cfg(target="js")
fn svg_animated_boolean_anim_val_ffi(obj: JsValue) -> Bool {
  svg_animated_boolean_anim_val_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_animated_boolean_base_val_ffi(obj: JsValue) -> Bool = "webapi_SVGAnimatedBoolean" "get_baseVal"

#cfg(target="wasm-gc")
fn svg_animated_boolean_set_base_val_ffi(obj: JsValue, base_val: JsValue) -> Unit = "webapi_SVGAnimatedBoolean" "set_baseVal"

#cfg(target="wasm-gc")
fn svg_animated_boolean_anim_val_ffi(obj: JsValue) -> Bool = "webapi_SVGAnimatedBoolean" "get_animVal"