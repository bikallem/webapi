// Auto-generated MoonBit bindings for ScrollIntoViewContainer enum
// Do not edit manually

///|
pub(all) enum ScrollIntoViewContainer {
  All
  Nearest
} derive(Eq,Show)

///|
pub fn ScrollIntoViewContainer::from(value: String) -> ScrollIntoViewContainer {
  match value {
    "all" => All
    "nearest" => Nearest
    _ => All
  }
}

///|
pub fn ScrollIntoViewContainer::to_js(self : ScrollIntoViewContainer) -> String {
  match self {
    All => "all"
    Nearest => "nearest"
  }
}
