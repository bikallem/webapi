// Auto-generated MoonBit bindings for ImageBitmapSource typedef

// Do not edit manually

//
// WebIDL Typedef:
// typedef (CanvasImageSource or
//          Blob or
//          ImageData) ImageBitmapSource;

///|
#external
pub type ImageBitmapSource

///|
pub(open) trait TImageBitmapSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TImageBitmapSource] ImageBitmapSource::into(
  self : ImageBitmapSource,
) -> T = "%identity"

///|
pub impl TImageBitmapSource for CanvasImageSource with to_js(
  self : CanvasImageSource,
) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TImageBitmapSource for ImageData with to_js(self : ImageData) -> JsValue = "%identity"
