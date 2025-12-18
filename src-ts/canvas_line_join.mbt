// Auto-generated MoonBit bindings for CanvasLineJoin

// Do not edit manually

///|
pub(all) enum CanvasLineJoin {
  Round
  Bevel
  Miter
} derive(Eq)

///|
pub impl TJsValue for CanvasLineJoin with to_js(self) {
  match self {
    CanvasLineJoin::Round => TJsValue::to_js("round")
    CanvasLineJoin::Bevel => TJsValue::to_js("bevel")
    CanvasLineJoin::Miter => TJsValue::to_js("miter")
  }
}

///|
pub fn CanvasLineJoin::from(value : String) -> CanvasLineJoin? {
  match value {
    "round" => Some(CanvasLineJoin::Round)
    "bevel" => Some(CanvasLineJoin::Bevel)
    "miter" => Some(CanvasLineJoin::Miter)
    _ => None
  }
}

///|
pub impl Show for CanvasLineJoin with output(self, logger) {
  match self {
    CanvasLineJoin::Round => logger.write_string("round")
    CanvasLineJoin::Bevel => logger.write_string("bevel")
    CanvasLineJoin::Miter => logger.write_string("miter")
  }
}