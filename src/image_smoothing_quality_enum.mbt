// Do not edit. This file is generated.
// MoonBit type: ImageSmoothingQuality
// Specifications: html.idl

///|
pub(all) enum ImageSmoothingQuality {
  Low
  Medium
  High
} derive(Eq, Show)

///|
pub impl TJsValue for ImageSmoothingQuality with to_js(
  self : ImageSmoothingQuality,
) -> JsValue {
  match self {
    ImageSmoothingQuality::Low => TJsValue::to_js("low")
    ImageSmoothingQuality::Medium => TJsValue::to_js("medium")
    ImageSmoothingQuality::High => TJsValue::to_js("high")
  }
}

///|
pub fn ImageSmoothingQuality::from(value : String) -> ImageSmoothingQuality? {
  match value {
    "low" => Some(ImageSmoothingQuality::Low)
    "medium" => Some(ImageSmoothingQuality::Medium)
    "high" => Some(ImageSmoothingQuality::High)
    _ => None
  }
}
