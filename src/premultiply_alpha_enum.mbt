///|
pub(all) enum PremultiplyAlpha {
  None
  Premultiply
  Default
} derive(Eq, Show)

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
