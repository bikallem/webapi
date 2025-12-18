// Auto-generated MoonBit bindings for NavigationHistoryBehavior

// Do not edit manually

///|
pub(all) enum NavigationHistoryBehavior {
  Auto
  Push
  Replace
} derive(Eq)

///|
pub impl TJsValue for NavigationHistoryBehavior with to_js(self) {
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

///|
pub impl Show for NavigationHistoryBehavior with output(self, logger) {
  match self {
    NavigationHistoryBehavior::Auto => logger.write_string("auto")
    NavigationHistoryBehavior::Push => logger.write_string("push")
    NavigationHistoryBehavior::Replace => logger.write_string("replace")
  }
}
