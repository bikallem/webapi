// Do not edit. This file is generated.
// MoonBit type: DocumentVisibilityState
// Specifications: html.idl

///|
pub(all) enum DocumentVisibilityState {
  Visible
  Hidden
} derive(Eq)

///|
pub impl Show for DocumentVisibilityState with output(
  self : DocumentVisibilityState,
  logger : &Logger,
) -> Unit {
  match self {
    DocumentVisibilityState::Visible => logger.write_string("Visible")
    DocumentVisibilityState::Hidden => logger.write_string("Hidden")
  }
}

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

///|
fn DocumentVisibilityState::from_unchecked(
  value : String,
) -> DocumentVisibilityState {
  match value {
    "visible" => DocumentVisibilityState::Visible
    "hidden" => DocumentVisibilityState::Hidden
    _ => DocumentVisibilityState::Visible
  }
}

///|
pub fn DocumentVisibilityState::value(self : DocumentVisibilityState) -> String {
  match self {
    DocumentVisibilityState::Visible => "visible"
    DocumentVisibilityState::Hidden => "hidden"
  }
}

///|
pub impl FromJsAny for DocumentVisibilityState with from_js_any(value : JsAny) -> DocumentVisibilityState {
  DocumentVisibilityState::from_unchecked(value)
}
