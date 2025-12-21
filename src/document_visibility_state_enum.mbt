///|
pub(all) enum DocumentVisibilityState {
  Visible
  Hidden
} derive(Eq, Show)

///|
pub impl TJsValue for DocumentVisibilityState with to_js(
  self : DocumentVisibilityState,
) -> JsValue {
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
