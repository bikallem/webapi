// Do not edit. This file is generated.
// MoonBit type: CanvasPattern
// Specifications: html.idl

///|
/// [CanvasPattern](https://developer.mozilla.org/en-US/docs/Web/API/CanvasPattern)
#external
pub type CanvasPattern

///|
pub impl TJsValue for CanvasPattern with to_js(self : CanvasPattern) -> JsValue = "%identity"

///|
pub impl FromJsAny for CanvasPattern with from_js_any(value : JsAny) -> CanvasPattern = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCanvasPattern] CanvasPattern::into(self : CanvasPattern) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCanvasPattern] CanvasPattern::unsafe_into(
  self : CanvasPattern,
) -> T = "%identity"

///|
pub impl HasConstructor for CanvasPattern with constructor_name() {
  "CanvasPattern"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCanvasPattern + HasConstructor] CanvasPattern::try_into(
  self : CanvasPattern,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCanvasPattern for CanvasPattern

///|
/// [CanvasPattern](https://developer.mozilla.org/en-US/docs/Web/API/CanvasPattern) interface.
pub trait TCanvasPattern: TJsValue {
  set_transform(self : Self, transform? : DOMMatrix2DInit) -> Unit = _
}

///|
/// [CanvasPattern.setTransform](https://developer.mozilla.org/en-US/docs/Web/API/CanvasPattern/setTransform)
impl TCanvasPattern with set_transform(
  self : Self,
  transform? : DOMMatrix2DInit,
) -> Unit {
  canvas_pattern_set_transform_ffi(TJsValue::to_js(self), opt_to_js(transform))
}

///|
#cfg(target="js")
extern "js" fn canvas_pattern_set_transform_ffi(
  obj : JsValue,
  transform : JsValue,
) -> Unit = "(obj, transform) => obj.setTransform(transform)"

///|
#cfg(target="wasm-gc")
fn canvas_pattern_set_transform_ffi(obj : JsValue, transform : JsValue) -> Unit = "webapi_CanvasPattern" "setTransform"
