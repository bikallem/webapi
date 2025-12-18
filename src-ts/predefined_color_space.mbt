// Auto-generated MoonBit bindings for PredefinedColorSpace

// Do not edit manually

///|
pub(all) enum PredefinedColorSpace {
  Srgb
  DisplayP3
} derive(Eq)

///|
pub impl TJsValue for PredefinedColorSpace with to_js(self) {
  match self {
    PredefinedColorSpace::Srgb => TJsValue::to_js("srgb")
    PredefinedColorSpace::DisplayP3 => TJsValue::to_js("display-p3")
  }
}

///|
pub fn PredefinedColorSpace::from(value : String) -> PredefinedColorSpace? {
  match value {
    "srgb" => Some(PredefinedColorSpace::Srgb)
    "display-p3" => Some(PredefinedColorSpace::DisplayP3)
    _ => None
  }
}

///|
pub impl Show for PredefinedColorSpace with output(self, logger) {
  match self {
    PredefinedColorSpace::Srgb => logger.write_string("srgb")
    PredefinedColorSpace::DisplayP3 => logger.write_string("display-p3")
  }
}