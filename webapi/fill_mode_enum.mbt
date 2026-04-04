// Do not edit. This file is generated.
// MoonBit type: FillMode
// Specifications: web-animations.idl

///|
pub(all) enum FillMode {
  None
  Forwards
  Backwards
  Both
  Auto
} derive(Eq)

///|
pub impl Show for FillMode with output(self : FillMode, logger : &Logger) -> Unit {
  match self {
    FillMode::None => logger.write_string("None")
    FillMode::Forwards => logger.write_string("Forwards")
    FillMode::Backwards => logger.write_string("Backwards")
    FillMode::Both => logger.write_string("Both")
    FillMode::Auto => logger.write_string("Auto")
  }
}

///|
pub impl TJsValue for FillMode with to_js(self : FillMode) -> JsValue {
  match self {
    FillMode::None => TJsValue::to_js("none")
    FillMode::Forwards => TJsValue::to_js("forwards")
    FillMode::Backwards => TJsValue::to_js("backwards")
    FillMode::Both => TJsValue::to_js("both")
    FillMode::Auto => TJsValue::to_js("auto")
  }
}

///|
pub fn FillMode::from(value : String) -> FillMode? {
  match value {
    "none" => Some(FillMode::None)
    "forwards" => Some(FillMode::Forwards)
    "backwards" => Some(FillMode::Backwards)
    "both" => Some(FillMode::Both)
    "auto" => Some(FillMode::Auto)
    _ => None
  }
}

///|
fn FillMode::from_unchecked(value : String) -> FillMode {
  match value {
    "none" => FillMode::None
    "forwards" => FillMode::Forwards
    "backwards" => FillMode::Backwards
    "both" => FillMode::Both
    "auto" => FillMode::Auto
    _ => FillMode::None
  }
}

///|
pub fn FillMode::value(self : FillMode) -> String {
  match self {
    FillMode::None => "none"
    FillMode::Forwards => "forwards"
    FillMode::Backwards => "backwards"
    FillMode::Both => "both"
    FillMode::Auto => "auto"
  }
}

///|
pub impl FromJsAny for FillMode with from_js_any(value : JsAny) -> FillMode {
  FillMode::from_unchecked(value)
}
