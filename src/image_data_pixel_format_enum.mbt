///|
pub(all) enum ImageDataPixelFormat {
  RgbaUnorm8
  RgbaFloat16
} derive(Eq, Show)

///|
pub impl TJsValue for ImageDataPixelFormat with to_js(
  self : ImageDataPixelFormat,
) -> JsValue {
  match self {
    ImageDataPixelFormat::RgbaUnorm8 => TJsValue::to_js("rgba-unorm8")
    ImageDataPixelFormat::RgbaFloat16 => TJsValue::to_js("rgba-float16")
  }
}

///|
pub fn ImageDataPixelFormat::from(value : String) -> ImageDataPixelFormat? {
  match value {
    "rgba-unorm8" => Some(ImageDataPixelFormat::RgbaUnorm8)
    "rgba-float16" => Some(ImageDataPixelFormat::RgbaFloat16)
    _ => None
  }
}
