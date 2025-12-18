// Auto-generated MoonBit bindings for ImageOrientation enum
// Do not edit manually

///|
pub(all) enum ImageOrientation {
  FromImage
  FlipY
} derive(Eq,Show)

///|
pub fn ImageOrientation::from(value: String) -> ImageOrientation {
  match value {
    "from-image" => FromImage
    "flipY" => FlipY
    _ => FromImage
  }
}

///|
pub fn ImageOrientation::to_js(self : ImageOrientation) -> String {
  match self {
    FromImage => "from-image"
    FlipY => "flipY"
  }
}
