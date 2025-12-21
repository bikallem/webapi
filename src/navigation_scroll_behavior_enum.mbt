///|
pub(all) enum NavigationScrollBehavior {
  AfterTransition
  Manual
} derive(Eq, Show)

///|
pub impl TJsValue for NavigationScrollBehavior with to_js(
  self : NavigationScrollBehavior,
) -> JsValue {
  match self {
    NavigationScrollBehavior::AfterTransition =>
      TJsValue::to_js("after-transition")
    NavigationScrollBehavior::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn NavigationScrollBehavior::from(
  value : String,
) -> NavigationScrollBehavior? {
  match value {
    "after-transition" => Some(NavigationScrollBehavior::AfterTransition)
    "manual" => Some(NavigationScrollBehavior::Manual)
    _ => None
  }
}
