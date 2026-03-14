// Do not edit. This file is generated.
// MoonBit type: SelectionMode
// Specifications: html.idl

pub(all) enum SelectionMode {
  Select
  Start
  End
  Preserve
} derive(Eq)

pub impl Show for SelectionMode with output(self : SelectionMode, logger : &Logger) -> Unit {
  match self {
    SelectionMode::Select => logger.write_string("Select")
    SelectionMode::Start => logger.write_string("Start")
    SelectionMode::End => logger.write_string("End")
    SelectionMode::Preserve => logger.write_string("Preserve")
  }
}

pub impl TJsValue for SelectionMode with to_js(self: SelectionMode) -> JsValue {
  match self {
    SelectionMode::Select => TJsValue::to_js("select")
    SelectionMode::Start => TJsValue::to_js("start")
    SelectionMode::End => TJsValue::to_js("end")
    SelectionMode::Preserve => TJsValue::to_js("preserve")
  }
}

pub fn SelectionMode::from(value: String) -> SelectionMode? {
  match value {
    "select" => Some(SelectionMode::Select)
    "start" => Some(SelectionMode::Start)
    "end" => Some(SelectionMode::End)
    "preserve" => Some(SelectionMode::Preserve)
    _ => None
  }
}

fn SelectionMode::from_unchecked(value: String) -> SelectionMode {
  match value {
    "select" => SelectionMode::Select
    "start" => SelectionMode::Start
    "end" => SelectionMode::End
    "preserve" => SelectionMode::Preserve
    _ => SelectionMode::Select
  }
}

pub fn SelectionMode::value(self: SelectionMode) -> String {
  match self {
    SelectionMode::Select => "select"
    SelectionMode::Start => "start"
    SelectionMode::End => "end"
    SelectionMode::Preserve => "preserve"
  }
}

pub impl FromJsAny for SelectionMode with from_js_any(value : JsAny) -> SelectionMode {
  SelectionMode::from_unchecked(value)
}