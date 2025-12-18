// Auto-generated MoonBit bindings for CanvasLineJoin enum
// Do not edit manually

///|
pub(all) enum CanvasLineJoin {
  Round
  Bevel
  Miter
} derive(Eq,Show)

///|
pub fn CanvasLineJoin::from(value: String) -> CanvasLineJoin {
  match value {
    "round" => Round
    "bevel" => Bevel
    "miter" => Miter
    _ => Round
  }
}

///|
pub fn CanvasLineJoin::to_js(self : CanvasLineJoin) -> String {
  match self {
    Round => "round"
    Bevel => "bevel"
    Miter => "miter"
  }
}
