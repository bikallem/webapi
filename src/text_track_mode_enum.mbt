// Do not edit. This file is generated.
// MoonBit type: TextTrackMode
// Specifications: html.idl

///|
pub(all) enum TextTrackMode {
  Disabled
  Hidden
  Showing
} derive(Eq)

///|
pub impl Show for TextTrackMode with output(
  self : TextTrackMode,
  logger : &Logger,
) -> Unit {
  match self {
    TextTrackMode::Disabled => logger.write_string("Disabled")
    TextTrackMode::Hidden => logger.write_string("Hidden")
    TextTrackMode::Showing => logger.write_string("Showing")
  }
}

///|
pub impl TJsValue for TextTrackMode with to_js(self : TextTrackMode) -> JsValue {
  match self {
    TextTrackMode::Disabled => TJsValue::to_js("disabled")
    TextTrackMode::Hidden => TJsValue::to_js("hidden")
    TextTrackMode::Showing => TJsValue::to_js("showing")
  }
}

///|
pub fn TextTrackMode::from(value : String) -> TextTrackMode? {
  match value {
    "disabled" => Some(TextTrackMode::Disabled)
    "hidden" => Some(TextTrackMode::Hidden)
    "showing" => Some(TextTrackMode::Showing)
    _ => None
  }
}

///|
fn TextTrackMode::from_unchecked(value : String) -> TextTrackMode {
  match value {
    "disabled" => TextTrackMode::Disabled
    "hidden" => TextTrackMode::Hidden
    "showing" => TextTrackMode::Showing
    _ => abort("unknown enum value")
  }
}

///|
pub fn TextTrackMode::value(self : TextTrackMode) -> String {
  let buf = StringBuilder::new()
  match self {
    TextTrackMode::Disabled => buf.write_string("disabled")
    TextTrackMode::Hidden => buf.write_string("hidden")
    TextTrackMode::Showing => buf.write_string("showing")
  }
  buf.to_string()
}
