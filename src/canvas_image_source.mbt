// Auto-generated MoonBit bindings for CanvasImageSource typedef

// Do not edit manually

//
// WebIDL Typedef:
// typedef (HTMLOrSVGImageElement or
//          HTMLVideoElement or
//          HTMLCanvasElement or
//          ImageBitmap or
//          OffscreenCanvas or
//          VideoFrame) CanvasImageSource;

///|
pub(open) trait TCanvasImageSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TCanvasImageSource] &TCanvasImageSource::into(
  self : &TCanvasImageSource,
) -> T = "%identity"

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
