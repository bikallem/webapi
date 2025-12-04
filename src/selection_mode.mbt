// Auto-generated MoonBit bindings for SelectionMode

// Do not edit manually

///|
pub enum SelectionMode {
  Select
  Start
  End
  Preserve
} derive(Eq)

///|
pub impl TJsValue for SelectionMode with to_js(self) {
  match self {
    SelectionMode::Select => TJsValue::to_js("select")
    SelectionMode::Start => TJsValue::to_js("start")
    SelectionMode::End => TJsValue::to_js("end")
    SelectionMode::Preserve => TJsValue::to_js("preserve")
  }
}

///|
pub fn SelectionMode::from_js(value : JsValue) -> SelectionMode? {
  let str : String = value.unsafe_cast()
  match str {
    "select" => Some(SelectionMode::Select)
    "start" => Some(SelectionMode::Start)
    "end" => Some(SelectionMode::End)
    "preserve" => Some(SelectionMode::Preserve)
    _ => None
  }
}

///|
pub impl Show for SelectionMode with output(self, logger) {
  match self {
    SelectionMode::Select => logger.write_string("select")
    SelectionMode::Start => logger.write_string("start")
    SelectionMode::End => logger.write_string("end")
    SelectionMode::Preserve => logger.write_string("preserve")
  }
}
