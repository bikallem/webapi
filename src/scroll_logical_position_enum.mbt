// Do not edit. This file is generated.
// MoonBit type: ScrollLogicalPosition
// Specifications: cssom-view.idl

///|
pub(all) enum ScrollLogicalPosition {
  Start
  Center
  End
  Nearest
} derive(Eq)

///|
pub impl Show for ScrollLogicalPosition with output(
  self : ScrollLogicalPosition,
  logger : &Logger,
) -> Unit {
  match self {
    ScrollLogicalPosition::Start => logger.write_string("Start")
    ScrollLogicalPosition::Center => logger.write_string("Center")
    ScrollLogicalPosition::End => logger.write_string("End")
    ScrollLogicalPosition::Nearest => logger.write_string("Nearest")
  }
}

///|
pub impl TJsValue for ScrollLogicalPosition with to_js(
  self : ScrollLogicalPosition,
) -> JsValue {
  match self {
    ScrollLogicalPosition::Start => TJsValue::to_js("start")
    ScrollLogicalPosition::Center => TJsValue::to_js("center")
    ScrollLogicalPosition::End => TJsValue::to_js("end")
    ScrollLogicalPosition::Nearest => TJsValue::to_js("nearest")
  }
}

///|
pub fn ScrollLogicalPosition::from(value : String) -> ScrollLogicalPosition? {
  match value {
    "start" => Some(ScrollLogicalPosition::Start)
    "center" => Some(ScrollLogicalPosition::Center)
    "end" => Some(ScrollLogicalPosition::End)
    "nearest" => Some(ScrollLogicalPosition::Nearest)
    _ => None
  }
}

///|
fn ScrollLogicalPosition::from_unchecked(
  value : String,
) -> ScrollLogicalPosition {
  match value {
    "start" => ScrollLogicalPosition::Start
    "center" => ScrollLogicalPosition::Center
    "end" => ScrollLogicalPosition::End
    "nearest" => ScrollLogicalPosition::Nearest
    _ => abort("unknown ScrollLogicalPosition enum value")
  }
}

///|
pub fn ScrollLogicalPosition::value(self : ScrollLogicalPosition) -> String {
  match self {
    ScrollLogicalPosition::Start => "start"
    ScrollLogicalPosition::Center => "center"
    ScrollLogicalPosition::End => "end"
    ScrollLogicalPosition::Nearest => "nearest"
  }
}

///|
pub impl FromJsAny for ScrollLogicalPosition with from_js_any(value : JsAny) -> ScrollLogicalPosition {
  ScrollLogicalPosition::from_unchecked(value)
}
