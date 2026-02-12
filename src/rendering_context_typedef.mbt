// Do not edit. This file is generated.
// MoonBit type: RenderingContext
// Specifications: html.idl

///|
/// [RenderingContext](https://developer.mozilla.org/en-US/docs/Web/API/RenderingContext)
#external
pub type RenderingContext

///|
pub impl TJsValue for RenderingContext with to_js(self : RenderingContext) -> JsValue = "%identity"

///|
pub(open) trait TRenderingContext {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TRenderingContext] RenderingContext::into(
  self : RenderingContext,
) -> T = "%identity"

///|
pub impl TRenderingContext for RenderingContext with to_js(
  self : RenderingContext,
) -> JsValue = "%identity"

///|
pub impl TRenderingContext for CanvasRenderingContext2D with to_js(
  self : CanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub impl TRenderingContext for ImageBitmapRenderingContext with to_js(
  self : ImageBitmapRenderingContext,
) -> JsValue = "%identity"

///|
pub impl TRenderingContext for WebGLRenderingContext with to_js(
  self : WebGLRenderingContext,
) -> JsValue = "%identity"

///|
pub impl TRenderingContext for WebGL2RenderingContext with to_js(
  self : WebGL2RenderingContext,
) -> JsValue = "%identity"

///|
pub impl TRenderingContext for GPUCanvasContext with to_js(
  self : GPUCanvasContext,
) -> JsValue = "%identity"
