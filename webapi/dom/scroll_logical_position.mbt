// Auto-generated MoonBit bindings for ScrollLogicalPosition

// Do not edit manually

///|
pub enum ScrollLogicalPosition {
  Start
  Center
  End
  Nearest
} derive(Eq)

///|
pub impl TJsValue for ScrollLogicalPosition with to_js(self) {
  match self {
    ScrollLogicalPosition::Start => TJsValue::to_js("start")
    ScrollLogicalPosition::Center => TJsValue::to_js("center")
    ScrollLogicalPosition::End => TJsValue::to_js("end")
    ScrollLogicalPosition::Nearest => TJsValue::to_js("nearest")
  }
}

///|
pub fn ScrollLogicalPosition::from_js(
  value : JsValue,
) -> ScrollLogicalPosition? {
  let str : String = value.unsafe_cast()
  match str {
    "start" => Some(ScrollLogicalPosition::Start)
    "center" => Some(ScrollLogicalPosition::Center)
    "end" => Some(ScrollLogicalPosition::End)
    "nearest" => Some(ScrollLogicalPosition::Nearest)
    _ => None
  }
}

///|
pub impl Show for ScrollLogicalPosition with output(self, logger) {
  match self {
    ScrollLogicalPosition::Start => logger.write_string("start")
    ScrollLogicalPosition::Center => logger.write_string("center")
    ScrollLogicalPosition::End => logger.write_string("end")
    ScrollLogicalPosition::Nearest => logger.write_string("nearest")
  }
}
