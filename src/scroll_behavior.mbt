// Auto-generated MoonBit bindings for ScrollBehavior

// Do not edit manually

///|
pub enum ScrollBehavior {
  Auto
  Instant
  Smooth
} derive(Eq)

///|
pub impl TJsValue for ScrollBehavior with to_js(self) {
  match self {
    ScrollBehavior::Auto => TJsValue::to_js("auto")
    ScrollBehavior::Instant => TJsValue::to_js("instant")
    ScrollBehavior::Smooth => TJsValue::to_js("smooth")
  }
}

///|
pub fn ScrollBehavior::from_js(value : JsValue) -> ScrollBehavior? {
  let str : String = value.unsafe_cast()
  match str {
    "auto" => Some(ScrollBehavior::Auto)
    "instant" => Some(ScrollBehavior::Instant)
    "smooth" => Some(ScrollBehavior::Smooth)
    _ => None
  }
}

///|
pub impl Show for ScrollBehavior with output(self, logger) {
  match self {
    ScrollBehavior::Auto => logger.write_string("auto")
    ScrollBehavior::Instant => logger.write_string("instant")
    ScrollBehavior::Smooth => logger.write_string("smooth")
  }
}
