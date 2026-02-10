// Do not edit. This file is generated.
// MoonBit type: ImageOrientation
// Specifications: html.idl

pub(all) enum ImageOrientation {
  FromImage
  FlipY
} derive(Eq,Show)

pub impl TJsValue for ImageOrientation with to_js(self: ImageOrientation) -> JsValue {
  match self {
    ImageOrientation::FromImage => TJsValue::to_js("from-image")
    ImageOrientation::FlipY => TJsValue::to_js("flipY")
  }
}

pub fn ImageOrientation::from(value: String) -> ImageOrientation? {
  match value {
    "from-image" => Some(ImageOrientation::FromImage)
    "flipY" => Some(ImageOrientation::FlipY)
    _ => None
  }
}