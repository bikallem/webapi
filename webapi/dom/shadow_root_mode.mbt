// Auto-generated MoonBit bindings for ShadowRootMode

// Do not edit manually

///|
pub enum ShadowRootMode {
  Open
  Closed
} derive(Eq)

///|
pub impl TJsValue for ShadowRootMode with to_js(self) {
  match self {
    ShadowRootMode::Open => TJsValue::to_js("open")
    ShadowRootMode::Closed => TJsValue::to_js("closed")
  }
}

///|
pub fn ShadowRootMode::from_js(value : JsValue) -> ShadowRootMode? {
  let str : String = value.unsafe_cast()
  match str {
    "open" => Some(ShadowRootMode::Open)
    "closed" => Some(ShadowRootMode::Closed)
    _ => None
  }
}

///|
pub impl Show for ShadowRootMode with output(self, logger) {
  match self {
    ShadowRootMode::Open => logger.write_string("open")
    ShadowRootMode::Closed => logger.write_string("closed")
  }
}
