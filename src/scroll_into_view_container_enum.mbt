///|
pub(all) enum ScrollIntoViewContainer {
  All
  Nearest
} derive(Eq, Show)

///|
pub impl TJsValue for ScrollIntoViewContainer with to_js(
  self : ScrollIntoViewContainer,
) -> JsValue {
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
