// Auto-generated MoonBit bindings for DocumentVisibilityState enum
// Do not edit manually

///|
pub(all) enum DocumentVisibilityState {
  Visible
  Hidden
} derive(Eq,Show)

///|
pub fn DocumentVisibilityState::from(value: String) -> DocumentVisibilityState {
  match value {
    "visible" => Visible
    "hidden" => Hidden
    _ => Visible
  }
}

///|
pub fn DocumentVisibilityState::to_js(self : DocumentVisibilityState) -> String {
  match self {
    Visible => "visible"
    Hidden => "hidden"
  }
}
