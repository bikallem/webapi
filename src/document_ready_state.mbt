// Auto-generated MoonBit bindings for DocumentReadyState

// Do not edit manually

///|
pub enum DocumentReadyState {
  Loading
  Interactive
  Complete
} derive(Eq)

///|
pub impl TJsValue for DocumentReadyState with to_js(self) {
  match self {
    DocumentReadyState::Loading => TJsValue::to_js("loading")
    DocumentReadyState::Interactive => TJsValue::to_js("interactive")
    DocumentReadyState::Complete => TJsValue::to_js("complete")
  }
}

///|
pub fn DocumentReadyState::from_js(value : JsValue) -> DocumentReadyState? {
  let str : String = value.unsafe_cast()
  match str {
    "loading" => Some(DocumentReadyState::Loading)
    "interactive" => Some(DocumentReadyState::Interactive)
    "complete" => Some(DocumentReadyState::Complete)
    _ => None
  }
}

///|
pub impl Show for DocumentReadyState with output(self, logger) {
  match self {
    DocumentReadyState::Loading => logger.write_string("loading")
    DocumentReadyState::Interactive => logger.write_string("interactive")
    DocumentReadyState::Complete => logger.write_string("complete")
  }
}
