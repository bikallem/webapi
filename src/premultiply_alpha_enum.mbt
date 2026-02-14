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
    _ => abort("unknown PremultiplyAlpha enum value")
  }
}

///|
pub fn PremultiplyAlpha::value(self : PremultiplyAlpha) -> String {
  let buf = StringBuilder::new()
  match self {
    PremultiplyAlpha::None => buf.write_string("none")
    PremultiplyAlpha::Premultiply => buf.write_string("premultiply")
    PremultiplyAlpha::Default => buf.write_string("default")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for PremultiplyAlpha with from_js_any(value : JsAny) -> PremultiplyAlpha {
  PremultiplyAlpha::from_unchecked(value)
}
