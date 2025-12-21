///|
pub(all) enum SelectionMode {
  Select
  Start
  End
  Preserve
} derive(Eq, Show)

///|
pub impl TJsValue for SelectionMode with to_js(self : SelectionMode) -> JsValue {
  match self {
    SelectionMode::Select => TJsValue::to_js("select")
    SelectionMode::Start => TJsValue::to_js("start")
    SelectionMode::End => TJsValue::to_js("end")
    SelectionMode::Preserve => TJsValue::to_js("preserve")
  }
}

///|
pub fn SelectionMode::from(value : String) -> SelectionMode? {
  match value {
    "select" => Some(SelectionMode::Select)
    "start" => Some(SelectionMode::Start)
    "end" => Some(SelectionMode::End)
    "preserve" => Some(SelectionMode::Preserve)
    _ => None
  }
}
