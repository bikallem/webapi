// Auto-generated MoonBit bindings for TextTrackMode

// Do not edit manually

///|
pub(all) enum TextTrackMode {
  Disabled
  Hidden
  Showing
} derive(Eq)

///|
pub impl TJsValue for TextTrackMode with to_js(self) {
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
pub impl Show for TextTrackMode with output(self, logger) {
  match self {
    TextTrackMode::Disabled => logger.write_string("disabled")
    TextTrackMode::Hidden => logger.write_string("hidden")
    TextTrackMode::Showing => logger.write_string("showing")
  }
}
