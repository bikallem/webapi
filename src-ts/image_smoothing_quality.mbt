// Auto-generated MoonBit bindings for ImageSmoothingQuality

// Do not edit manually

///|
pub(all) enum ImageSmoothingQuality {
  Low
  Medium
  High
} derive(Eq)

///|
pub impl TJsValue for ImageSmoothingQuality with to_js(self) {
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

///|
pub impl Show for ImageSmoothingQuality with output(self, logger) {
  match self {
    ImageSmoothingQuality::Low => logger.write_string("low")
    ImageSmoothingQuality::Medium => logger.write_string("medium")
    ImageSmoothingQuality::High => logger.write_string("high")
  }
}