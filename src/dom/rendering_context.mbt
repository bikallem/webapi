// Auto-generated MoonBit bindings for RenderingContext typedef

// Do not edit manually

///|
pub(open) trait TRenderingContext {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TRenderingContext] &TRenderingContext::into(
  self : &TRenderingContext,
) -> T = "%identity"

///|
pub impl TRenderingContext for CanvasRenderingContext2D with to_js(
  self : CanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub impl TRenderingContext for ImageBitmapRenderingContext with to_js(
  self : ImageBitmapRenderingContext,
) -> JsValue = "%identity"
