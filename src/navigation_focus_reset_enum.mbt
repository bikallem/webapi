// Do not edit. This file is generated.
// MoonBit type: NavigationFocusReset
// Specifications: html.idl

///|
pub(all) enum NavigationFocusReset {
  AfterTransition
  Manual
} derive(Eq, Show)

///|
pub impl TJsValue for NavigationFocusReset with to_js(
  self : NavigationFocusReset,
) -> JsValue {
  match self {
    NavigationFocusReset::AfterTransition => TJsValue::to_js("after-transition")
    NavigationFocusReset::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn NavigationFocusReset::from(value : String) -> NavigationFocusReset? {
  match value {
    "after-transition" => Some(NavigationFocusReset::AfterTransition)
    "manual" => Some(NavigationFocusReset::Manual)
    _ => None
  }
}
