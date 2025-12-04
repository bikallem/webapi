// Auto-generated MoonBit bindings for CanvasGradient

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=(Window,Worker)]
// interface CanvasGradient {
//   // opaque object
//   undefined addColorStop(double offset, DOMString color);
// };

///|
#external
pub type CanvasGradient

///|
pub trait TCanvasGradient: TJsValue {
  add_color_stop(self : Self, offset : Double, color : String) -> Unit = _
}

///|
pub impl TCanvasGradient for CanvasGradient

///|
pub impl TJsValue for CanvasGradient with to_js(self : CanvasGradient) -> JsValue = "%identity"

///|
pub fn CanvasGradient::null() -> CanvasGradient = "JsValue" "null"

///|
pub fn CanvasGradient::is_null(self : CanvasGradient) -> Bool = "JsValue" "isNull"

///|
fn canvas_gradient_add_color_stop_ffi(
  obj : JsValue,
  offset : JsValue,
  color : JsValue,
) -> Unit = "webapi_CanvasGradient" "addColorStop"

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
