// Auto-generated MoonBit bindings for ResizeQuality

// Do not edit manually

///|
pub(all) enum ResizeQuality {
  Pixelated
  Low
  Medium
  High
} derive(Eq)

///|
pub impl TJsValue for ResizeQuality with to_js(self) {
  match self {
    ResizeQuality::Pixelated => TJsValue::to_js("pixelated")
    ResizeQuality::Low => TJsValue::to_js("low")
    ResizeQuality::Medium => TJsValue::to_js("medium")
    ResizeQuality::High => TJsValue::to_js("high")
  }
}

///|
pub fn ResizeQuality::from(value : String) -> ResizeQuality? {
  match value {
    "pixelated" => Some(ResizeQuality::Pixelated)
    "low" => Some(ResizeQuality::Low)
    "medium" => Some(ResizeQuality::Medium)
    "high" => Some(ResizeQuality::High)
    _ => None
  }
}

///|
pub impl Show for ResizeQuality with output(self, logger) {
  match self {
    ResizeQuality::Pixelated => logger.write_string("pixelated")
    ResizeQuality::Low => logger.write_string("low")
    ResizeQuality::Medium => logger.write_string("medium")
    ResizeQuality::High => logger.write_string("high")
  }
}
