// Auto-generated MoonBit bindings for ImageDataPixelFormat

// Do not edit manually

///|
pub enum ImageDataPixelFormat {
  RgbaUnorm8
  RgbaFloat16
} derive(Eq)

///|
pub impl TJsValue for ImageDataPixelFormat with to_js(self) {
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

///|
pub impl Show for ImageDataPixelFormat with output(self, logger) {
  match self {
    ImageDataPixelFormat::RgbaUnorm8 => logger.write_string("rgba-unorm8")
    ImageDataPixelFormat::RgbaFloat16 => logger.write_string("rgba-float16")
  }
}
