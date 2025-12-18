// Auto-generated MoonBit bindings for NavigationFocusReset

// Do not edit manually

///|
pub(all) enum NavigationFocusReset {
  AfterTransition
  Manual
} derive(Eq)

///|
pub impl TJsValue for NavigationFocusReset with to_js(self) {
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

///|
pub impl Show for NavigationFocusReset with output(self, logger) {
  match self {
    NavigationFocusReset::AfterTransition =>
      logger.write_string("after-transition")
    NavigationFocusReset::Manual => logger.write_string("manual")
  }
}
