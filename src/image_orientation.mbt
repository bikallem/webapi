// Auto-generated MoonBit bindings for ImageOrientation

// Do not edit manually

///|
pub(all) enum ImageOrientation {
  FromImage
  Flipy
} derive(Eq)

///|
pub impl TJsValue for ImageOrientation with to_js(self) {
  match self {
    ImageOrientation::FromImage => TJsValue::to_js("from-image")
    ImageOrientation::Flipy => TJsValue::to_js("flipY")
  }
}

///|
pub fn ImageOrientation::from(value : String) -> ImageOrientation? {
  match value {
    "from-image" => Some(ImageOrientation::FromImage)
    "flipY" => Some(ImageOrientation::Flipy)
    _ => None
  }
}

///|
pub impl Show for ImageOrientation with output(self, logger) {
  match self {
    ImageOrientation::FromImage => logger.write_string("from-image")
    ImageOrientation::Flipy => logger.write_string("flipY")
  }
}
