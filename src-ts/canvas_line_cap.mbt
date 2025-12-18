// Auto-generated MoonBit bindings for CanvasLineCap

// Do not edit manually

///|
pub(all) enum CanvasLineCap {
  Butt
  Round
  Square
} derive(Eq)

///|
pub impl TJsValue for CanvasLineCap with to_js(self) {
  match self {
    CanvasLineCap::Butt => TJsValue::to_js("butt")
    CanvasLineCap::Round => TJsValue::to_js("round")
    CanvasLineCap::Square => TJsValue::to_js("square")
  }
}

///|
pub fn CanvasLineCap::from(value : String) -> CanvasLineCap? {
  match value {
    "butt" => Some(CanvasLineCap::Butt)
    "round" => Some(CanvasLineCap::Round)
    "square" => Some(CanvasLineCap::Square)
    _ => None
  }
}

///|
pub impl Show for CanvasLineCap with output(self, logger) {
  match self {
    CanvasLineCap::Butt => logger.write_string("butt")
    CanvasLineCap::Round => logger.write_string("round")
    CanvasLineCap::Square => logger.write_string("square")
  }
}