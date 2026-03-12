// Do not edit. This file is generated.
// MoonBit type: ImageDataPixelFormat
// Specifications: html.idl

///|
pub(all) enum ImageDataPixelFormat {
  RgbaUnorm8
  RgbaFloat16
} derive(Eq)

///|
pub impl Show for ImageDataPixelFormat with output(
  self : ImageDataPixelFormat,
  logger : &Logger,
) -> Unit {
  match self {
    ImageDataPixelFormat::RgbaUnorm8 => logger.write_string("RgbaUnorm8")
    ImageDataPixelFormat::RgbaFloat16 => logger.write_string("RgbaFloat16")
  }
}

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

///|
fn ImageDataPixelFormat::from_unchecked(value : String) -> ImageDataPixelFormat {
  match value {
    "rgba-unorm8" => ImageDataPixelFormat::RgbaUnorm8
    "rgba-float16" => ImageDataPixelFormat::RgbaFloat16
    _ => ImageDataPixelFormat::RgbaUnorm8
  }
}

///|
pub fn ImageDataPixelFormat::value(self : ImageDataPixelFormat) -> String {
  match self {
    ImageDataPixelFormat::RgbaUnorm8 => "rgba-unorm8"
    ImageDataPixelFormat::RgbaFloat16 => "rgba-float16"
  }
}

///|
pub impl FromJsAny for ImageDataPixelFormat with from_js_any(value : JsAny) -> ImageDataPixelFormat {
  ImageDataPixelFormat::from_unchecked(value)
}
