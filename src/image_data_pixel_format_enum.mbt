// Auto-generated MoonBit bindings for ImageDataPixelFormat enum
// Do not edit manually

///|
pub(all) enum ImageDataPixelFormat {
  RgbaUnorm8
  RgbaFloat16
} derive(Eq,Show)

///|
pub fn ImageDataPixelFormat::from(value: String) -> ImageDataPixelFormat {
  match value {
    "rgba-unorm8" => RgbaUnorm8
    "rgba-float16" => RgbaFloat16
    _ => RgbaUnorm8
  }
}

///|
pub fn ImageDataPixelFormat::to_js(self : ImageDataPixelFormat) -> String {
  match self {
    RgbaUnorm8 => "rgba-unorm8"
    RgbaFloat16 => "rgba-float16"
  }
}
