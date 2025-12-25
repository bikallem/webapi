// Do not edit. This file is generated.
// MoonBit type: DocumentReadyState
// Specifications: html.idl

///|
pub(all) enum DocumentReadyState {
  Loading
  Interactive
  Complete
} derive(Eq, Show)

///|
pub impl TJsValue for DocumentReadyState with to_js(self : DocumentReadyState) -> JsValue {
  match self {
    DocumentReadyState::Loading => TJsValue::to_js("loading")
    DocumentReadyState::Interactive => TJsValue::to_js("interactive")
    DocumentReadyState::Complete => TJsValue::to_js("complete")
  }
}

///|
pub fn DocumentReadyState::from(value : String) -> DocumentReadyState? {
  match value {
    "loading" => Some(DocumentReadyState::Loading)
    "interactive" => Some(DocumentReadyState::Interactive)
    "complete" => Some(DocumentReadyState::Complete)
    _ => None
  }
}
