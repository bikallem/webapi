// Do not edit. This file is generated.
// MoonBit type: CanvasGradient
// Specifications: html.idl

/// [CanvasGradient](https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient)
#external
pub type CanvasGradient

pub impl TJsValue for CanvasGradient with to_js(self: CanvasGradient) -> JsValue = "%identity"

pub impl FromJsAny for CanvasGradient with from_js_any(value : JsAny) -> CanvasGradient = "%identity"

pub fn[T: TCanvasGradient] CanvasGradient::into(self : CanvasGradient) -> T = "%identity"

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