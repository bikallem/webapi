// Auto-generated MoonBit bindings for ScrollIntoViewContainer

// Do not edit manually

///|
pub(all) enum ScrollIntoViewContainer {
  All
  Nearest
} derive(Eq)

///|
pub impl TJsValue for ScrollIntoViewContainer with to_js(self) {
  match self {
    ScrollIntoViewContainer::All => TJsValue::to_js("all")
    ScrollIntoViewContainer::Nearest => TJsValue::to_js("nearest")
  }
}

///|
pub fn ScrollIntoViewContainer::from(
  value : String,
) -> ScrollIntoViewContainer? {
  match value {
    "all" => Some(ScrollIntoViewContainer::All)
    "nearest" => Some(ScrollIntoViewContainer::Nearest)
    _ => None
  }
}

///|
pub impl Show for ScrollIntoViewContainer with output(self, logger) {
  match self {
    ScrollIntoViewContainer::All => logger.write_string("all")
    ScrollIntoViewContainer::Nearest => logger.write_string("nearest")
  }
}
