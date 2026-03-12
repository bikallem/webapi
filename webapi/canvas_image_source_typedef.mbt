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
pub(open) trait TCanvasImageSource: TJsValue {}

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
pub impl TCanvasImageSource for CanvasImageSource

///|
pub impl TCanvasImageSource for HTMLOrSVGImageElement

///|
pub impl TCanvasImageSource for HTMLVideoElement

///|
pub impl TCanvasImageSource for HTMLCanvasElement

///|
pub impl TCanvasImageSource for ImageBitmap

///|
pub impl TCanvasImageSource for OffscreenCanvas

///|
pub impl TCanvasImageSource for VideoFrame
