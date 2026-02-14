// Do not edit. This file is generated.
// MoonBit type: OrientationType
// Specifications: screen-orientation.idl

///|
pub(all) enum OrientationType {
  PortraitPrimary
  PortraitSecondary
  LandscapePrimary
  LandscapeSecondary
} derive(Eq)

///|
pub impl Show for OrientationType with output(
  self : OrientationType,
  logger : &Logger,
) -> Unit {
  match self {
    OrientationType::PortraitPrimary => logger.write_string("PortraitPrimary")
    OrientationType::PortraitSecondary =>
      logger.write_string("PortraitSecondary")
    OrientationType::LandscapePrimary => logger.write_string("LandscapePrimary")
    OrientationType::LandscapeSecondary =>
      logger.write_string("LandscapeSecondary")
  }
}

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

///|
fn OrientationType::from_unchecked(value : String) -> OrientationType {
  match value {
    "portrait-primary" => OrientationType::PortraitPrimary
    "portrait-secondary" => OrientationType::PortraitSecondary
    "landscape-primary" => OrientationType::LandscapePrimary
    "landscape-secondary" => OrientationType::LandscapeSecondary
    _ => abort("unknown enum value")
  }
}

///|
pub fn OrientationType::value(self : OrientationType) -> String {
  let buf = StringBuilder::new()
  match self {
    OrientationType::PortraitPrimary => buf.write_string("portrait-primary")
    OrientationType::PortraitSecondary => buf.write_string("portrait-secondary")
    OrientationType::LandscapePrimary => buf.write_string("landscape-primary")
    OrientationType::LandscapeSecondary =>
      buf.write_string("landscape-secondary")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for OrientationType with from_js_any(value : JsAny) -> OrientationType {
  OrientationType::from_unchecked(value)
}
