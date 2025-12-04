// Auto-generated MoonBit bindings for OffscreenCanvasRenderingContext2D

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=(Window,Worker)]
// interface OffscreenCanvasRenderingContext2D {
//   readonly attribute OffscreenCanvas canvas;
// };

///|
#external
pub type OffscreenCanvasRenderingContext2D

///|
pub trait TOffscreenCanvasRenderingContext2D: TJsValue {
  canvas(self : Self) -> JsValue = _
}

///|
pub impl TOffscreenCanvasRenderingContext2D for OffscreenCanvasRenderingContext2D

///|
pub impl TJsValue for OffscreenCanvasRenderingContext2D with to_js(
  self : OffscreenCanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub fn OffscreenCanvasRenderingContext2D::null() -> OffscreenCanvasRenderingContext2D = "JsValue" "null"

///|
pub fn OffscreenCanvasRenderingContext2D::is_null(
  self : OffscreenCanvasRenderingContext2D,
) -> Bool = "JsValue" "isNull"

///|
fn offscreen_canvas_rendering_context2_d_canvas_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "canvas"

///|
impl TOffscreenCanvasRenderingContext2D with canvas(self : Self) -> JsValue {
  offscreen_canvas_rendering_context2_d_canvas_ffi(self.to_js())
}
