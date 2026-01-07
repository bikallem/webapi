// Do not edit. This file is generated.
// MoonBit type: OffscreenRenderingContext
// Specifications: html.idl

///|
/// [OffscreenRenderingContext](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenRenderingContext)
#external
pub type OffscreenRenderingContext

///|
pub impl TJsValue for OffscreenRenderingContext with to_js(
  self : OffscreenRenderingContext,
) -> JsValue = "%identity"

///|
pub(open) trait TOffscreenRenderingContext {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TOffscreenRenderingContext] OffscreenRenderingContext::into(
  self : OffscreenRenderingContext,
) -> T = "%identity"

///|
pub impl TOffscreenRenderingContext for OffscreenCanvasRenderingContext2D with to_js(
  self : OffscreenCanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub impl TOffscreenRenderingContext for ImageBitmapRenderingContext with to_js(
  self : ImageBitmapRenderingContext,
) -> JsValue = "%identity"

///|
pub impl TOffscreenRenderingContext for WebGLRenderingContext with to_js(
  self : WebGLRenderingContext,
) -> JsValue = "%identity"

///|
pub impl TOffscreenRenderingContext for WebGL2RenderingContext with to_js(
  self : WebGL2RenderingContext,
) -> JsValue = "%identity"

///|
pub impl TOffscreenRenderingContext for GPUCanvasContext with to_js(
  self : GPUCanvasContext,
) -> JsValue = "%identity"
