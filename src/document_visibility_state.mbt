// Auto-generated MoonBit bindings for DocumentVisibilityState

// Do not edit manually

///|
pub enum DocumentVisibilityState {
  Visible
  Hidden
} derive(Eq)

///|
pub impl TJsValue for DocumentVisibilityState with to_js(self) {
  match self {
    DocumentVisibilityState::Visible => TJsValue::to_js("visible")
    DocumentVisibilityState::Hidden => TJsValue::to_js("hidden")
  }
}

///|
pub fn DocumentVisibilityState::from(
  value : String,
) -> DocumentVisibilityState? {
  match value {
    "visible" => Some(DocumentVisibilityState::Visible)
    "hidden" => Some(DocumentVisibilityState::Hidden)
    _ => None
  }
}

///|
pub impl Show for DocumentVisibilityState with output(self, logger) {
  match self {
    DocumentVisibilityState::Visible => logger.write_string("visible")
    DocumentVisibilityState::Hidden => logger.write_string("hidden")
  }
}
