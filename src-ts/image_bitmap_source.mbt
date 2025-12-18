// Auto-generated MoonBit bindings for ImageBitmapSource typedef

// Do not edit manually

///|
pub(open) trait TImageBitmapSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TImageBitmapSource] &TImageBitmapSource::into(self : &TImageBitmapSource) -> T = "%identity"

///|
pub impl TImageBitmapSource for HTMLImageElement with to_js(
  self : HTMLImageElement,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for SVGImageElement with to_js(
  self : SVGImageElement,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for HTMLVideoElement with to_js(
  self : HTMLVideoElement,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for HTMLCanvasElement with to_js(
  self : HTMLCanvasElement,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for ImageBitmap with to_js(
  self : ImageBitmap,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for OffscreenCanvas with to_js(
  self : OffscreenCanvas,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for Blob with to_js(
  self : Blob,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for ImageData with to_js(
  self : ImageData,
) -> JsValue = "%identity"