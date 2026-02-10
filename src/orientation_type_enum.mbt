// Do not edit. This file is generated.
// MoonBit type: OrientationType
// Specifications: screen-orientation.idl

///|
pub(all) enum OrientationType {
  PortraitPrimary
  PortraitSecondary
  LandscapePrimary
  LandscapeSecondary
} derive(Eq, Show)

///|
pub impl TJsValue for OrientationType with to_js(self : OrientationType) -> JsValue {
  match self {
    OrientationType::PortraitPrimary => TJsValue::to_js("portrait-primary")
    OrientationType::PortraitSecondary => TJsValue::to_js("portrait-secondary")
    OrientationType::LandscapePrimary => TJsValue::to_js("landscape-primary")
    OrientationType::LandscapeSecondary =>
      TJsValue::to_js("landscape-secondary")
  }
}

///|
pub fn OrientationType::from(value : String) -> OrientationType? {
  match value {
    "portrait-primary" => Some(OrientationType::PortraitPrimary)
    "portrait-secondary" => Some(OrientationType::PortraitSecondary)
    "landscape-primary" => Some(OrientationType::LandscapePrimary)
    "landscape-secondary" => Some(OrientationType::LandscapeSecondary)
    _ => None
  }
}
