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
    _ => ImageOrientation::FromImage
  }
}

///|
pub fn ImageOrientation::value(self : ImageOrientation) -> String {
  match self {
    ImageOrientation::FromImage => "from-image"
    ImageOrientation::FlipY => "flipY"
  }
}

///|
pub impl FromJsAny for ImageOrientation with from_js_any(value : JsAny) -> ImageOrientation {
  ImageOrientation::from_unchecked(value)
}
