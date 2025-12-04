// Auto-generated MoonBit bindings for CanvasTextBaseline

// Do not edit manually

///|
pub enum CanvasTextBaseline {
  Top
  Hanging
  Middle
  Alphabetic
  Ideographic
  Bottom
} derive(Eq)

///|
pub impl TJsValue for CanvasTextBaseline with to_js(self) {
  match self {
    CanvasTextBaseline::Top => TJsValue::to_js("top")
    CanvasTextBaseline::Hanging => TJsValue::to_js("hanging")
    CanvasTextBaseline::Middle => TJsValue::to_js("middle")
    CanvasTextBaseline::Alphabetic => TJsValue::to_js("alphabetic")
    CanvasTextBaseline::Ideographic => TJsValue::to_js("ideographic")
    CanvasTextBaseline::Bottom => TJsValue::to_js("bottom")
  }
}

///|
pub fn CanvasTextBaseline::from_js(value : JsValue) -> CanvasTextBaseline? {
  let str : String = value.unsafe_cast()
  match str {
    "top" => Some(CanvasTextBaseline::Top)
    "hanging" => Some(CanvasTextBaseline::Hanging)
    "middle" => Some(CanvasTextBaseline::Middle)
    "alphabetic" => Some(CanvasTextBaseline::Alphabetic)
    "ideographic" => Some(CanvasTextBaseline::Ideographic)
    "bottom" => Some(CanvasTextBaseline::Bottom)
    _ => None
  }
}

///|
pub impl Show for CanvasTextBaseline with output(self, logger) {
  match self {
    CanvasTextBaseline::Top => logger.write_string("top")
    CanvasTextBaseline::Hanging => logger.write_string("hanging")
    CanvasTextBaseline::Middle => logger.write_string("middle")
    CanvasTextBaseline::Alphabetic => logger.write_string("alphabetic")
    CanvasTextBaseline::Ideographic => logger.write_string("ideographic")
    CanvasTextBaseline::Bottom => logger.write_string("bottom")
  }
}
