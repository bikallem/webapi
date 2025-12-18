// Auto-generated MoonBit bindings for ScrollRestoration

// Do not edit manually

///|
pub(all) enum ScrollRestoration {
  Auto
  Manual
} derive(Eq)

///|
pub impl TJsValue for ScrollRestoration with to_js(self) {
  match self {
    ScrollRestoration::Auto => TJsValue::to_js("auto")
    ScrollRestoration::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn ScrollRestoration::from(value : String) -> ScrollRestoration? {
  match value {
    "auto" => Some(ScrollRestoration::Auto)
    "manual" => Some(ScrollRestoration::Manual)
    _ => None
  }
}

///|
pub impl Show for ScrollRestoration with output(self, logger) {
  match self {
    ScrollRestoration::Auto => logger.write_string("auto")
    ScrollRestoration::Manual => logger.write_string("manual")
  }
}
