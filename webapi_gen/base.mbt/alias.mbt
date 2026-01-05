///|
pub type WindowProxy = Window

///|
pub type CSSOMString = String

///|
#external
pub type ReadableStream

///|
pub impl TJsValue for ReadableStream with to_js(self : ReadableStream) -> JsValue = "%identity"

///|
#external
pub type VideoFrame

///|
pub impl TJsValue for VideoFrame with to_js(self : VideoFrame) -> JsValue = "%identity"

///|
#external
pub type CSSPseudoElement

///|
pub impl TJsValue for CSSPseudoElement with to_js(self : CSSPseudoElement) -> JsValue = "%identity"

///|
#external
pub type MediaStream

///|
pub impl TJsValue for MediaStream with to_js(self : MediaStream) -> JsValue = "%identity"

///|
#external
pub type WebGLRenderingContext

///|
pub impl TJsValue for WebGLRenderingContext with to_js(
  self : WebGLRenderingContext,
) -> JsValue = "%identity"

///|
#external
pub type ViewTransition

///|
pub impl TJsValue for ViewTransition with to_js(self : ViewTransition) -> JsValue = "%identity"

///|
#external
pub type MediaSource

///|
pub impl TJsValue for MediaSource with to_js(self : MediaSource) -> JsValue = "%identity"

///|
#external
pub type ServiceWorker

///|
pub impl TJsValue for ServiceWorker with to_js(self : ServiceWorker) -> JsValue = "%identity"

///|
#external
pub type WebGL2RenderingContext

///|
pub impl TJsValue for WebGL2RenderingContext with to_js(
  self : WebGL2RenderingContext,
) -> JsValue = "%identity"

///|
#external
pub type GPUCanvasContext

///|
pub impl TJsValue for GPUCanvasContext with to_js(self : GPUCanvasContext) -> JsValue = "%identity"

///|
#external
pub type OnErrorEventHandlerNonNullEvent

///|
pub impl TJsValue for OnErrorEventHandlerNonNullEvent with to_js(
  self : OnErrorEventHandlerNonNullEvent,
) -> JsValue = "%identity"
