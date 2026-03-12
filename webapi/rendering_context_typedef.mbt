// Do not edit. This file is generated.
// MoonBit type: RenderingContext
// Specifications: html.idl

/// [RenderingContext](https://developer.mozilla.org/en-US/docs/Web/API/RenderingContext)
#external
pub type RenderingContext

pub impl TJsValue for RenderingContext with to_js(self: RenderingContext) -> JsValue = "%identity"

pub impl FromJsAny for RenderingContext with from_js_any(value : JsAny) -> RenderingContext = "%identity"

pub(open) trait TRenderingContext : TJsValue {}

pub fn[T : TRenderingContext + FromJsAny] RenderingContext::into(self : RenderingContext) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TRenderingContext] RenderingContext::from(value : T) -> RenderingContext = "%identity"

pub impl TRenderingContext for RenderingContext

pub impl TRenderingContext for CanvasRenderingContext2D

pub impl TRenderingContext for ImageBitmapRenderingContext

pub impl TRenderingContext for WebGLRenderingContext

pub impl TRenderingContext for WebGL2RenderingContext

pub impl TRenderingContext for GPUCanvasContext