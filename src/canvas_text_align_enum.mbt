// Do not edit. This file is generated.
// MoonBit type: CanvasTextAlign
// Specifications: html.idl

///|
pub(all) enum CanvasTextAlign {
  Start
  End
  Left
  Right
  Center
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasTextAlign with to_js(self : CanvasTextAlign) -> JsValue {
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
