// Auto-generated MoonBit bindings for PremultiplyAlpha

// Do not edit manually

///|
pub(all) enum PremultiplyAlpha {
  None
  Premultiply
  Default
} derive(Eq)

///|
pub impl TJsValue for PremultiplyAlpha with to_js(self) {
  match self {
    PremultiplyAlpha::None => TJsValue::to_js("none")
    PremultiplyAlpha::Premultiply => TJsValue::to_js("premultiply")
    PremultiplyAlpha::Default => TJsValue::to_js("default")
  }
}

///|
pub fn PremultiplyAlpha::from(value : String) -> PremultiplyAlpha? {
  match value {
    "none" => Some(PremultiplyAlpha::None)
    "premultiply" => Some(PremultiplyAlpha::Premultiply)
    "default" => Some(PremultiplyAlpha::Default)
    _ => None
  }
}

///|
pub impl Show for PremultiplyAlpha with output(self, logger) {
  match self {
    PremultiplyAlpha::None => logger.write_string("none")
    PremultiplyAlpha::Premultiply => logger.write_string("premultiply")
    PremultiplyAlpha::Default => logger.write_string("default")
  }
}
