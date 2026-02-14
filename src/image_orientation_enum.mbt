// Do not edit. This file is generated.
// MoonBit type: ImageOrientation
// Specifications: html.idl

///|
pub(all) enum ImageOrientation {
  FromImage
  FlipY
} derive(Eq)

///|
pub impl Show for ImageOrientation with output(
  self : ImageOrientation,
  logger : &Logger,
) -> Unit {
  match self {
    ImageOrientation::FromImage => logger.write_string("FromImage")
    ImageOrientation::FlipY => logger.write_string("FlipY")
  }
}

///|
pub impl TJsValue for ImageOrientation with to_js(self : ImageOrientation) -> JsValue {
  match self {
    ImageOrientation::FromImage => TJsValue::to_js("from-image")
    ImageOrientation::FlipY => TJsValue::to_js("flipY")
  }
}

///|
pub fn ImageOrientation::from(value : String) -> ImageOrientation? {
  match value {
    "from-image" => Some(ImageOrientation::FromImage)
    "flipY" => Some(ImageOrientation::FlipY)
    _ => None
  }
}

///|
fn ImageOrientation::from_unchecked(value : String) -> ImageOrientation {
  match value {
    "from-image" => ImageOrientation::FromImage
    "flipY" => ImageOrientation::FlipY
    _ => abort("unknown enum value")
  }
}

///|
pub fn ImageOrientation::value(self : ImageOrientation) -> String {
  let buf = StringBuilder::new()
  match self {
    ImageOrientation::FromImage => buf.write_string("from-image")
    ImageOrientation::FlipY => buf.write_string("flipY")
  }
  buf.to_string()
}
