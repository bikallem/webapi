// Do not edit. This file is generated.
// MoonBit type: OrientationLockType
// Specifications: screen-orientation.idl

///|
pub(all) enum OrientationLockType {
  Any
  Natural
  Landscape
  Portrait
  PortraitPrimary
  PortraitSecondary
  LandscapePrimary
  LandscapeSecondary
} derive(Eq)

///|
pub impl Show for OrientationLockType with output(
  self : OrientationLockType,
  logger : &Logger,
) -> Unit {
  match self {
    OrientationLockType::Any => logger.write_string("Any")
    OrientationLockType::Natural => logger.write_string("Natural")
    OrientationLockType::Landscape => logger.write_string("Landscape")
    OrientationLockType::Portrait => logger.write_string("Portrait")
    OrientationLockType::PortraitPrimary =>
      logger.write_string("PortraitPrimary")
    OrientationLockType::PortraitSecondary =>
      logger.write_string("PortraitSecondary")
    OrientationLockType::LandscapePrimary =>
      logger.write_string("LandscapePrimary")
    OrientationLockType::LandscapeSecondary =>
      logger.write_string("LandscapeSecondary")
  }
}

///|
pub impl TJsValue for OrientationLockType with to_js(self : OrientationLockType) -> JsValue {
  match self {
    OrientationLockType::Any => TJsValue::to_js("any")
    OrientationLockType::Natural => TJsValue::to_js("natural")
    OrientationLockType::Landscape => TJsValue::to_js("landscape")
    OrientationLockType::Portrait => TJsValue::to_js("portrait")
    OrientationLockType::PortraitPrimary => TJsValue::to_js("portrait-primary")
    OrientationLockType::PortraitSecondary =>
      TJsValue::to_js("portrait-secondary")
    OrientationLockType::LandscapePrimary =>
      TJsValue::to_js("landscape-primary")
    OrientationLockType::LandscapeSecondary =>
      TJsValue::to_js("landscape-secondary")
  }
}

///|
pub fn OrientationLockType::from(value : String) -> OrientationLockType? {
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

///|
fn OrientationLockType::from_unchecked(value : String) -> OrientationLockType {
  match value {
    "any" => OrientationLockType::Any
    "natural" => OrientationLockType::Natural
    "landscape" => OrientationLockType::Landscape
    "portrait" => OrientationLockType::Portrait
    "portrait-primary" => OrientationLockType::PortraitPrimary
    "portrait-secondary" => OrientationLockType::PortraitSecondary
    "landscape-primary" => OrientationLockType::LandscapePrimary
    "landscape-secondary" => OrientationLockType::LandscapeSecondary
    _ => abort("unknown enum value")
  }
}

///|
pub fn OrientationLockType::value(self : OrientationLockType) -> String {
  let buf = StringBuilder::new()
  match self {
    OrientationLockType::Any => buf.write_string("any")
    OrientationLockType::Natural => buf.write_string("natural")
    OrientationLockType::Landscape => buf.write_string("landscape")
    OrientationLockType::Portrait => buf.write_string("portrait")
    OrientationLockType::PortraitPrimary => buf.write_string("portrait-primary")
    OrientationLockType::PortraitSecondary =>
      buf.write_string("portrait-secondary")
    OrientationLockType::LandscapePrimary =>
      buf.write_string("landscape-primary")
    OrientationLockType::LandscapeSecondary =>
      buf.write_string("landscape-secondary")
  }
  buf.to_string()
}
