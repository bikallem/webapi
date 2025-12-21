///|
pub(all) enum CanvasLineJoin {
  Round
  Bevel
  Miter
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasLineJoin with to_js(self : CanvasLineJoin) -> JsValue {
  match self {
    CanvasLineJoin::Round => TJsValue::to_js("round")
    CanvasLineJoin::Bevel => TJsValue::to_js("bevel")
    CanvasLineJoin::Miter => TJsValue::to_js("miter")
  }
}

///|
pub fn CanvasLineJoin::from(value : String) -> CanvasLineJoin? {
  match value {
    "round" => Some(CanvasLineJoin::Round)
    "bevel" => Some(CanvasLineJoin::Bevel)
    "miter" => Some(CanvasLineJoin::Miter)
    _ => None
  }
}
