// Auto-generated MoonBit bindings for ColorSpaceConversion enum
// Do not edit manually

///|
pub(all) enum ColorSpaceConversion {
  None
  Default
} derive(Eq,Show)

///|
pub fn ColorSpaceConversion::from(value: String) -> ColorSpaceConversion {
  match value {
    "none" => None
    "default" => Default
    _ => None
  }
}

///|
pub fn ColorSpaceConversion::to_js(self : ColorSpaceConversion) -> String {
  match self {
    None => "none"
    Default => "default"
  }
}
