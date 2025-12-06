// Auto-generated MoonBit bindings for CanvasFillRule

// Do not edit manually

///|
pub(all) enum CanvasFillRule {
  Nonzero
  Evenodd
} derive(Eq)

///|
pub impl TJsValue for CanvasFillRule with to_js(self) {
  match self {
    CanvasFillRule::Nonzero => TJsValue::to_js("nonzero")
    CanvasFillRule::Evenodd => TJsValue::to_js("evenodd")
  }
}

///|
pub fn CanvasFillRule::from(value : String) -> CanvasFillRule? {
  match value {
    "nonzero" => Some(CanvasFillRule::Nonzero)
    "evenodd" => Some(CanvasFillRule::Evenodd)
    _ => None
  }
}

///|
pub impl Show for CanvasFillRule with output(self, logger) {
  match self {
    CanvasFillRule::Nonzero => logger.write_string("nonzero")
    CanvasFillRule::Evenodd => logger.write_string("evenodd")
  }
}
