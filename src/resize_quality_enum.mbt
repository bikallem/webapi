// Auto-generated MoonBit bindings for ResizeQuality enum
// Do not edit manually

///|
pub(all) enum ResizeQuality {
  Pixelated
  Low
  Medium
  High
} derive(Eq,Show)

///|
pub fn ResizeQuality::from(value: String) -> ResizeQuality {
  match value {
    "pixelated" => Pixelated
    "low" => Low
    "medium" => Medium
    "high" => High
    _ => Pixelated
  }
}

///|
pub fn ResizeQuality::to_js(self : ResizeQuality) -> String {
  match self {
    Pixelated => "pixelated"
    Low => "low"
    Medium => "medium"
    High => "high"
  }
}
