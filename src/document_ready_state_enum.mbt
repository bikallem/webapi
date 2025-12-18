// Auto-generated MoonBit bindings for DocumentReadyState enum
// Do not edit manually

///|
pub(all) enum DocumentReadyState {
  Loading
  Interactive
  Complete
} derive(Eq,Show)

///|
pub fn DocumentReadyState::from(value: String) -> DocumentReadyState {
  match value {
    "loading" => Loading
    "interactive" => Interactive
    "complete" => Complete
    _ => Loading
  }
}

///|
pub fn DocumentReadyState::to_js(self : DocumentReadyState) -> String {
  match self {
    Loading => "loading"
    Interactive => "interactive"
    Complete => "complete"
  }
}
