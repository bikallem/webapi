// Do not edit. This file is generated.
// MoonBit type: DocumentReadyState
// Specifications: html.idl

///|
pub(all) enum DocumentReadyState {
  Loading
  Interactive
  Complete
} derive(Eq)

///|
pub impl Show for DocumentReadyState with output(
  self : DocumentReadyState,
  logger : &Logger,
) -> Unit {
  match self {
    DocumentReadyState::Loading => logger.write_string("Loading")
    DocumentReadyState::Interactive => logger.write_string("Interactive")
    DocumentReadyState::Complete => logger.write_string("Complete")
  }
}

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

///|
fn DocumentReadyState::from_unchecked(value : String) -> DocumentReadyState {
  match value {
    "loading" => DocumentReadyState::Loading
    "interactive" => DocumentReadyState::Interactive
    "complete" => DocumentReadyState::Complete
    _ => abort("unknown DocumentReadyState enum value")
  }
}

///|
pub fn DocumentReadyState::value(self : DocumentReadyState) -> String {
  let buf = StringBuilder::new()
  match self {
    DocumentReadyState::Loading => buf.write_string("loading")
    DocumentReadyState::Interactive => buf.write_string("interactive")
    DocumentReadyState::Complete => buf.write_string("complete")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for DocumentReadyState with from_js_any(value : JsAny) -> DocumentReadyState {
  DocumentReadyState::from_unchecked(value)
}
