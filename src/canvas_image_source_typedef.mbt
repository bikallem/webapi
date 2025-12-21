///|
#external
pub type CanvasImageSource

///|
pub impl TJsValue for CanvasImageSource with to_js(self : CanvasImageSource) -> JsValue = "%identity"

///|
pub(open) trait TCanvasImageSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TCanvasImageSource] CanvasImageSource::into(
  self : CanvasImageSource,
) -> T = "%identity"

///|
pub impl TCanvasImageSource for HTMLOrSVGImageElement with to_js(
  self : HTMLOrSVGImageElement,
) -> JsValue = "%identity"

///|
pub impl TCanvasImageSource for HTMLVideoElement with to_js(
  self : HTMLVideoElement,
) -> JsValue = "%identity"

///|
pub impl TCanvasImageSource for HTMLCanvasElement with to_js(
  self : HTMLCanvasElement,
) -> JsValue = "%identity"

///|
pub impl TCanvasImageSource for ImageBitmap with to_js(self : ImageBitmap) -> JsValue = "%identity"

///|
pub impl TCanvasImageSource for OffscreenCanvas with to_js(
  self : OffscreenCanvas,
) -> JsValue = "%identity"

///|
pub impl TCanvasImageSource for VideoFrame with to_js(self : VideoFrame) -> JsValue = "%identity"
