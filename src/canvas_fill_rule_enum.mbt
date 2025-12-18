// Auto-generated MoonBit bindings for CanvasFillRule enum
// Do not edit manually

///|
pub(all) enum CanvasFillRule {
  Nonzero
  Evenodd
} derive(Eq,Show)

///|
pub fn CanvasFillRule::from(value: String) -> CanvasFillRule {
  match value {
    "nonzero" => Nonzero
    "evenodd" => Evenodd
    _ => Nonzero
  }
}

///|
pub fn CanvasFillRule::to_js(self : CanvasFillRule) -> String {
  match self {
    Nonzero => "nonzero"
    Evenodd => "evenodd"
  }
}
