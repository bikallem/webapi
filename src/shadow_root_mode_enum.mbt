// Auto-generated MoonBit bindings for ShadowRootMode enum
// Do not edit manually

///|
pub(all) enum ShadowRootMode {
  Open
  Closed
} derive(Eq,Show)

///|
pub fn ShadowRootMode::from(value: String) -> ShadowRootMode {
  match value {
    "open" => Open
    "closed" => Closed
    _ => Open
  }
}

///|
pub fn ShadowRootMode::to_js(self : ShadowRootMode) -> String {
  match self {
    Open => "open"
    Closed => "closed"
  }
}
