///|
pub(all) enum CanvasTextBaseline {
  Top
  Hanging
  Middle
  Alphabetic
  Ideographic
  Bottom
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasTextBaseline with to_js(self : CanvasTextBaseline) -> JsValue {
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
pub fn CanvasTextBaseline::from(value : String) -> CanvasTextBaseline? {
  match value {
    "top" => Some(CanvasTextBaseline::Top)
    "hanging" => Some(CanvasTextBaseline::Hanging)
    "middle" => Some(CanvasTextBaseline::Middle)
    "alphabetic" => Some(CanvasTextBaseline::Alphabetic)
    "ideographic" => Some(CanvasTextBaseline::Ideographic)
    "bottom" => Some(CanvasTextBaseline::Bottom)
    _ => None
  }
}
