// Auto-generated MoonBit bindings for ImageSmoothingQuality enum
// Do not edit manually

///|
pub(all) enum ImageSmoothingQuality {
  Low
  Medium
  High
} derive(Eq,Show)

///|
pub fn ImageSmoothingQuality::from(value: String) -> ImageSmoothingQuality {
  match value {
    "low" => Low
    "medium" => Medium
    "high" => High
    _ => Low
  }
}

///|
pub fn ImageSmoothingQuality::to_js(self : ImageSmoothingQuality) -> String {
  match self {
    Low => "low"
    Medium => "medium"
    High => "high"
  }
}
