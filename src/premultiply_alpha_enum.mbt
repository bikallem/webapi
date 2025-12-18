// Auto-generated MoonBit bindings for PremultiplyAlpha enum
// Do not edit manually

///|
pub(all) enum PremultiplyAlpha {
  None
  Premultiply
  Default
} derive(Eq,Show)

///|
pub fn PremultiplyAlpha::from(value: String) -> PremultiplyAlpha {
  match value {
    "none" => None
    "premultiply" => Premultiply
    "default" => Default
    _ => None
  }
}

///|
pub fn PremultiplyAlpha::to_js(self : PremultiplyAlpha) -> String {
  match self {
    None => "none"
    Premultiply => "premultiply"
    Default => "default"
  }
}
