// Auto-generated MoonBit bindings for TextTrackMode enum
// Do not edit manually

///|
pub(all) enum TextTrackMode {
  Disabled
  Hidden
  Showing
} derive(Eq,Show)

///|
pub fn TextTrackMode::from(value: String) -> TextTrackMode {
  match value {
    "disabled" => Disabled
    "hidden" => Hidden
    "showing" => Showing
    _ => Disabled
  }
}

///|
pub fn TextTrackMode::to_js(self : TextTrackMode) -> String {
  match self {
    Disabled => "disabled"
    Hidden => "hidden"
    Showing => "showing"
  }
}
