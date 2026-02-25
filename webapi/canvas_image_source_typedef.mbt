// Do not edit. This file is generated.
// MoonBit type: CanvasImageSource
// Specifications: html.idl

///|
/// [CanvasImageSource](https://developer.mozilla.org/en-US/docs/Web/API/CanvasImageSource)
#external
pub type CanvasImageSource

///|
pub impl TJsValue for CanvasImageSource with to_js(self : CanvasImageSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for CanvasImageSource with from_js_any(value : JsAny) -> CanvasImageSource = "%identity"

///|
pub(open) trait TCanvasImageSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TCanvasImageSource + FromJsAny] CanvasImageSource::into(
  self : CanvasImageSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TCanvasImageSource] CanvasImageSource::from(
  value : T,
) -> CanvasImageSource = "%identity"

///|
pub impl TCanvasImageSource for CanvasImageSource with to_js(
  self : CanvasImageSource,
) -> JsValue = "%identity"

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
