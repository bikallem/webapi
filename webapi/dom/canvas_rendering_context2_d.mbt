// Auto-generated MoonBit bindings for CanvasRenderingContext2D

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface CanvasRenderingContext2D {
//   // back-reference to the canvas
//   readonly attribute HTMLCanvasElement canvas;
// };

///|
#external
pub type CanvasRenderingContext2D

///|
pub trait TCanvasRenderingContext2D: TJsValue {
  canvas(self : Self) -> HTMLCanvasElement = _
}

///|
pub impl TCanvasRenderingContext2D for CanvasRenderingContext2D

///|
pub impl TJsValue for CanvasRenderingContext2D with to_js(
  self : CanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub fn CanvasRenderingContext2D::null() -> CanvasRenderingContext2D = "JsValue" "null"

///|
pub fn CanvasRenderingContext2D::is_null(
  self : CanvasRenderingContext2D,
) -> Bool = "JsValue" "isNull"

///|
fn canvas_rendering_context2_d_canvas_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "canvas"

///|
impl TCanvasRenderingContext2D with canvas(self : Self) -> HTMLCanvasElement {
  canvas_rendering_context2_d_canvas_ffi(self.to_js()).unsafe_cast()
}
