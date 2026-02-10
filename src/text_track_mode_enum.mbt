// Do not edit. This file is generated.
// MoonBit type: TextTrackMode
// Specifications: html.idl

///|
pub(all) enum TextTrackMode {
  Disabled
  Hidden
  Showing
} derive(Eq, Show)

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
