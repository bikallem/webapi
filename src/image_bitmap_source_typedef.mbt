// Do not edit. This file is generated.
// MoonBit type: ImageBitmapSource
// Specifications: html.idl

///|
/// [ImageBitmapSource](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapSource)
#external
pub type ImageBitmapSource

///|
pub impl TJsValue for ImageBitmapSource with to_js(self : ImageBitmapSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageBitmapSource with from_js_any(value : JsAny) -> ImageBitmapSource = "%identity"

///|
pub(open) trait TImageBitmapSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TImageBitmapSource + FromJsAny] ImageBitmapSource::into(
  self : ImageBitmapSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TImageBitmapSource] ImageBitmapSource::from(
  value : T,
) -> ImageBitmapSource = "%identity"

///|
pub impl TImageBitmapSource for ImageBitmapSource with to_js(
  self : ImageBitmapSource,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for CanvasImageSource with to_js(
  self : CanvasImageSource,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for ImageData with to_js(self : ImageData) -> JsValue = "%identity"
