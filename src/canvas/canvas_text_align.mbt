// Auto-generated MoonBit bindings for CanvasTextAlign

// Do not edit manually

///|
pub enum CanvasTextAlign {
  Start
  End
  Left
  Right
  Center
} derive(Eq)

///|
pub impl TJsValue for CanvasTextAlign with to_js(self) {
  match self {
    CanvasTextAlign::Start => TJsValue::to_js("start")
    CanvasTextAlign::End => TJsValue::to_js("end")
    CanvasTextAlign::Left => TJsValue::to_js("left")
    CanvasTextAlign::Right => TJsValue::to_js("right")
    CanvasTextAlign::Center => TJsValue::to_js("center")
  }
}

///|
pub fn CanvasTextAlign::from(value : String) -> CanvasTextAlign? {
  match value {
    "start" => Some(CanvasTextAlign::Start)
    "end" => Some(CanvasTextAlign::End)
    "left" => Some(CanvasTextAlign::Left)
    "right" => Some(CanvasTextAlign::Right)
    "center" => Some(CanvasTextAlign::Center)
    _ => None
  }
}

///|
pub impl Show for CanvasTextAlign with output(self, logger) {
  match self {
    CanvasTextAlign::Start => logger.write_string("start")
    CanvasTextAlign::End => logger.write_string("end")
    CanvasTextAlign::Left => logger.write_string("left")
    CanvasTextAlign::Right => logger.write_string("right")
    CanvasTextAlign::Center => logger.write_string("center")
  }
}
