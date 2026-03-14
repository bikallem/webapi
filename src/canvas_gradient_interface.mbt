// Do not edit. This file is generated.
// MoonBit type: CanvasGradient
// Specifications: html.idl

/// [CanvasGradient](https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient)
#external
pub type CanvasGradient

pub impl TJsValue for CanvasGradient with to_js(self: CanvasGradient) -> JsValue = "%identity"

pub impl FromJsAny for CanvasGradient with from_js_any(value : JsAny) -> CanvasGradient = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TCanvasGradient] CanvasGradient::into(self : CanvasGradient) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TCanvasGradient] CanvasGradient::unsafe_into(self : CanvasGradient) -> T = "%identity"

pub impl HasConstructor for CanvasGradient with constructor_name() { "CanvasGradient" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCanvasGradient + HasConstructor] CanvasGradient::try_into(self : CanvasGradient) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TCanvasGradient for CanvasGradient

/// [CanvasGradient](https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient) interface.
pub trait TCanvasGradient: TJsValue {
  add_color_stop(self : Self, offset : Double, color : String) -> Unit = _
}

/// [CanvasGradient.addColorStop](https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient/addColorStop)
impl TCanvasGradient with add_color_stop(self : Self, 
offset : Double, 
color : String) -> Unit {
  canvas_gradient_add_color_stop_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(color))
}

#cfg(target="js")
extern "js" fn canvas_gradient_add_color_stop_ffi(obj: JsValue, offset: JsValue, color: JsValue) -> Unit = "(obj, offset, color) => obj.addColorStop(offset, color)"

#cfg(target="wasm-gc")
fn canvas_gradient_add_color_stop_ffi(obj: JsValue, offset: JsValue, color: JsValue) -> Unit = "webapi_CanvasGradient" "addColorStop"