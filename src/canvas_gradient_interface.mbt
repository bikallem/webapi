// Do not edit. This file is generated.
// MoonBit type: CanvasGradient
// Specifications: html.idl

///|
#external
pub type CanvasGradient

///|
pub impl TJsValue for CanvasGradient with to_js(self : CanvasGradient) -> JsValue = "%identity"

///|
pub fn[T : TCanvasGradient] CanvasGradient::into(self : CanvasGradient) -> T = "%identity"

///|
pub impl TCanvasGradient for CanvasGradient

///|
pub trait TCanvasGradient: TJsValue {
  add_color_stop(self : Self, offset : Double, color : String) -> Unit = _
}

///|
extern "js" fn canvas_gradient_add_color_stop_ffi(
  obj : JsValue,
  offset : JsValue,
  color : JsValue,
) -> Unit = "(obj, offset, color) => obj.addColorStop(offset, color)"

///|
impl TCanvasGradient with add_color_stop(
  self : Self,
  offset : Double,
  color : String,
) -> Unit {
  canvas_gradient_add_color_stop_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(offset),
    TJsValue::to_js(color),
  )
}
