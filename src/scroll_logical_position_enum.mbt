// Do not edit. This file is generated.
// MoonBit type: ScrollLogicalPosition
// Specifications: cssom-view.idl

pub(all) enum ScrollLogicalPosition {
  Start
  Center
  End
  Nearest
} derive(Eq,Show)

pub impl TJsValue for ScrollLogicalPosition with to_js(self: ScrollLogicalPosition) -> JsValue {
  match self {
    ScrollLogicalPosition::Start => TJsValue::to_js("start")
    ScrollLogicalPosition::Center => TJsValue::to_js("center")
    ScrollLogicalPosition::End => TJsValue::to_js("end")
    ScrollLogicalPosition::Nearest => TJsValue::to_js("nearest")
  }
}

pub fn ScrollLogicalPosition::from(value: String) -> ScrollLogicalPosition? {
  match value {
    "start" => Some(ScrollLogicalPosition::Start)
    "center" => Some(ScrollLogicalPosition::Center)
    "end" => Some(ScrollLogicalPosition::End)
    "nearest" => Some(ScrollLogicalPosition::Nearest)
    _ => None
  }
}