///|
pub(all) enum CanvasLineCap {
  Butt
  Round
  Square
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasLineCap with to_js(self : CanvasLineCap) -> JsValue {
  match self {
    CanvasLineCap::Butt => TJsValue::to_js("butt")
    CanvasLineCap::Round => TJsValue::to_js("round")
    CanvasLineCap::Square => TJsValue::to_js("square")
  }
}

///|
pub fn CanvasLineCap::from(value : String) -> CanvasLineCap? {
  match value {
    "butt" => Some(CanvasLineCap::Butt)
    "round" => Some(CanvasLineCap::Round)
    "square" => Some(CanvasLineCap::Square)
    _ => None
  }
}
