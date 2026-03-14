// Do not edit. This file is generated.
// MoonBit type: OffscreenRenderingContext
// Specifications: html.idl

/// [OffscreenRenderingContext](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenRenderingContext)
#external
pub type OffscreenRenderingContext

pub impl TJsValue for OffscreenRenderingContext with to_js(self: OffscreenRenderingContext) -> JsValue = "%identity"

pub impl FromJsAny for OffscreenRenderingContext with from_js_any(value : JsAny) -> OffscreenRenderingContext = "%identity"

pub(open) trait TOffscreenRenderingContext : TJsValue {}

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TOffscreenRenderingContext + FromJsAny] OffscreenRenderingContext::into(self : OffscreenRenderingContext) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TOffscreenRenderingContext + FromJsAny] OffscreenRenderingContext::unsafe_into(self : OffscreenRenderingContext) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TOffscreenRenderingContext] OffscreenRenderingContext::from(value : T) -> OffscreenRenderingContext = "%identity"

pub impl TOffscreenRenderingContext for OffscreenRenderingContext

pub impl TOffscreenRenderingContext for OffscreenCanvasRenderingContext2D

pub impl TOffscreenRenderingContext for ImageBitmapRenderingContext

pub impl TOffscreenRenderingContext for WebGLRenderingContext

pub impl TOffscreenRenderingContext for WebGL2RenderingContext

pub impl TOffscreenRenderingContext for GPUCanvasContext