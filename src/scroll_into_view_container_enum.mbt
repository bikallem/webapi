// Do not edit. This file is generated.
// MoonBit type: ScrollIntoViewContainer
// Specifications: cssom-view.idl

///|
pub(all) enum ScrollIntoViewContainer {
  All
  Nearest
} derive(Eq)

///|
pub impl Show for ScrollIntoViewContainer with output(
  self : ScrollIntoViewContainer,
  logger : &Logger,
) -> Unit {
  match self {
    ScrollIntoViewContainer::All => logger.write_string("All")
    ScrollIntoViewContainer::Nearest => logger.write_string("Nearest")
  }
}

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

///|
fn ScrollIntoViewContainer::from_unchecked(
  value : String,
) -> ScrollIntoViewContainer {
  match value {
    "all" => ScrollIntoViewContainer::All
    "nearest" => ScrollIntoViewContainer::Nearest
    _ => abort("unknown enum value")
  }
}

///|
pub fn ScrollIntoViewContainer::value(self : ScrollIntoViewContainer) -> String {
  let buf = StringBuilder::new()
  match self {
    ScrollIntoViewContainer::All => buf.write_string("all")
    ScrollIntoViewContainer::Nearest => buf.write_string("nearest")
  }
  buf.to_string()
}
