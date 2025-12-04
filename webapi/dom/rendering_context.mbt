// Auto-generated MoonBit bindings for RenderingContext typedef

// Do not edit manually

//
// WebIDL Typedef:
// typedef (CanvasRenderingContext2D or ImageBitmapRenderingContext or WebGLRenderingContext or WebGL2RenderingContext or GPUCanvasContext) RenderingContext;

///|
#external
pub type RenderingContext

///|
pub(open) trait TRenderingContext {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TRenderingContext] RenderingContext::into(
  self : RenderingContext,
) -> T = "%identity"

///|
pub impl TRenderingContext for CanvasRenderingContext2D with to_js(
  self : CanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub impl TRenderingContext for ImageBitmapRenderingContext with to_js(
  self : ImageBitmapRenderingContext,
) -> JsValue = "%identity"
