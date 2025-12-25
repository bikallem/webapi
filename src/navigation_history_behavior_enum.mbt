// Do not edit. This file is generated.
// MoonBit type: NavigationHistoryBehavior
// Specifications: html.idl

///|
pub(all) enum NavigationHistoryBehavior {
  Auto
  Push
  Replace
} derive(Eq, Show)

///|
pub impl TJsValue for NavigationHistoryBehavior with to_js(
  self : NavigationHistoryBehavior,
) -> JsValue {
  match self {
    NavigationHistoryBehavior::Auto => TJsValue::to_js("auto")
    NavigationHistoryBehavior::Push => TJsValue::to_js("push")
    NavigationHistoryBehavior::Replace => TJsValue::to_js("replace")
  }
}

///|
pub fn NavigationHistoryBehavior::from(
  value : String,
) -> NavigationHistoryBehavior? {
  match value {
    "auto" => Some(NavigationHistoryBehavior::Auto)
    "push" => Some(NavigationHistoryBehavior::Push)
    "replace" => Some(NavigationHistoryBehavior::Replace)
    _ => None
  }
}
