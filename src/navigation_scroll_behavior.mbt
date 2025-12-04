// Auto-generated MoonBit bindings for NavigationScrollBehavior

// Do not edit manually

///|
pub enum NavigationScrollBehavior {
  AfterTransition
  Manual
} derive(Eq)

///|
pub impl TJsValue for NavigationScrollBehavior with to_js(self) {
  match self {
    NavigationScrollBehavior::AfterTransition =>
      TJsValue::to_js("after-transition")
    NavigationScrollBehavior::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn NavigationScrollBehavior::from_js(
  value : JsValue,
) -> NavigationScrollBehavior? {
  let str : String = value.unsafe_cast()
  match str {
    "after-transition" => Some(NavigationScrollBehavior::AfterTransition)
    "manual" => Some(NavigationScrollBehavior::Manual)
    _ => None
  }
}

///|
pub impl Show for NavigationScrollBehavior with output(self, logger) {
  match self {
    NavigationScrollBehavior::AfterTransition =>
      logger.write_string("after-transition")
    NavigationScrollBehavior::Manual => logger.write_string("manual")
  }
}
