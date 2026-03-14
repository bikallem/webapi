// Do not edit. This file is generated.
// MoonBit type: PremultiplyAlpha
// Specifications: html.idl

///|
pub(all) enum PremultiplyAlpha {
  None
  Premultiply
  Default
} derive(Eq)

///|
pub impl Show for PremultiplyAlpha with output(
  self : PremultiplyAlpha,
  logger : &Logger,
) -> Unit {
  match self {
    PremultiplyAlpha::None => logger.write_string("None")
    PremultiplyAlpha::Premultiply => logger.write_string("Premultiply")
    PremultiplyAlpha::Default => logger.write_string("Default")
  }
}

///|
pub impl TJsValue for PremultiplyAlpha with to_js(self : PremultiplyAlpha) -> JsValue {
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
fn PremultiplyAlpha::from_unchecked(value : String) -> PremultiplyAlpha {
  match value {
    "none" => PremultiplyAlpha::None
    "premultiply" => PremultiplyAlpha::Premultiply
    "default" => PremultiplyAlpha::Default
    _ => PremultiplyAlpha::None
  }
}

///|
pub fn PremultiplyAlpha::value(self : PremultiplyAlpha) -> String {
  match self {
    PremultiplyAlpha::None => "none"
    PremultiplyAlpha::Premultiply => "premultiply"
    PremultiplyAlpha::Default => "default"
  }
}

///|
pub impl FromJsAny for PremultiplyAlpha with from_js_any(value : JsAny) -> PremultiplyAlpha {
  PremultiplyAlpha::from_unchecked(value)
}
