// Auto-generated MoonBit bindings for PredefinedColorSpace enum
// Do not edit manually

///|
pub(all) enum PredefinedColorSpace {
  Srgb
  DisplayP3
} derive(Eq,Show)

///|
pub fn PredefinedColorSpace::from(value: String) -> PredefinedColorSpace {
  match value {
    "srgb" => Srgb
    "display-p3" => DisplayP3
    _ => Srgb
  }
}

///|
pub fn PredefinedColorSpace::to_js(self : PredefinedColorSpace) -> String {
  match self {
    Srgb => "srgb"
    DisplayP3 => "display-p3"
  }
}
