// Do not edit. This file is generated.
// MoonBit type: ImageBitmapSource
// Specifications: html.idl

/// [ImageBitmapSource](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapSource)
#external
pub type ImageBitmapSource

pub impl TJsValue for ImageBitmapSource with to_js(self: ImageBitmapSource) -> JsValue = "%identity"

pub(open) trait TImageBitmapSource {
  to_js(self : Self) -> JsValue
}

pub fn[T: TImageBitmapSource] ImageBitmapSource::into(self : ImageBitmapSource) -> T = "%identity"

pub impl TImageBitmapSource for CanvasImageSource with to_js(self : CanvasImageSource) -> JsValue = "%identity"

pub impl TImageBitmapSource for Blob with to_js(self : Blob) -> JsValue = "%identity"

pub impl TImageBitmapSource for ImageData with to_js(self : ImageData) -> JsValue = "%identity"