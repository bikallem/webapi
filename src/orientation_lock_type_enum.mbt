// Do not edit. This file is generated.
// MoonBit type: OrientationLockType
// Specifications: screen-orientation.idl

pub(all) enum OrientationLockType {
  Any
  Natural
  Landscape
  Portrait
  PortraitPrimary
  PortraitSecondary
  LandscapePrimary
  LandscapeSecondary
} derive(Eq,Show)

pub impl TJsValue for OrientationLockType with to_js(self: OrientationLockType) -> JsValue {
  match self {
    OrientationLockType::Any => TJsValue::to_js("any")
    OrientationLockType::Natural => TJsValue::to_js("natural")
    OrientationLockType::Landscape => TJsValue::to_js("landscape")
    OrientationLockType::Portrait => TJsValue::to_js("portrait")
    OrientationLockType::PortraitPrimary => TJsValue::to_js("portrait-primary")
    OrientationLockType::PortraitSecondary => TJsValue::to_js("portrait-secondary")
    OrientationLockType::LandscapePrimary => TJsValue::to_js("landscape-primary")
    OrientationLockType::LandscapeSecondary => TJsValue::to_js("landscape-secondary")
  }
}

pub fn OrientationLockType::from(value: String) -> OrientationLockType? {
  match value {
    "any" => Some(OrientationLockType::Any)
    "natural" => Some(OrientationLockType::Natural)
    "landscape" => Some(OrientationLockType::Landscape)
    "portrait" => Some(OrientationLockType::Portrait)
    "portrait-primary" => Some(OrientationLockType::PortraitPrimary)
    "portrait-secondary" => Some(OrientationLockType::PortraitSecondary)
    "landscape-primary" => Some(OrientationLockType::LandscapePrimary)
    "landscape-secondary" => Some(OrientationLockType::LandscapeSecondary)
    _ => None
  }
}