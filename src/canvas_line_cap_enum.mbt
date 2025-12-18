// Auto-generated MoonBit bindings for CanvasLineCap enum
// Do not edit manually

///|
pub(all) enum CanvasLineCap {
  Butt
  Round
  Square
} derive(Eq,Show)

///|
pub fn CanvasLineCap::from(value: String) -> CanvasLineCap {
  match value {
    "butt" => Butt
    "round" => Round
    "square" => Square
    _ => Butt
  }
}

///|
pub fn CanvasLineCap::to_js(self : CanvasLineCap) -> String {
  match self {
    Butt => "butt"
    Round => "round"
    Square => "square"
  }
}
