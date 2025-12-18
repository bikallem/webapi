// Auto-generated MoonBit bindings for CanvasFontKerning enum
// Do not edit manually

///|
pub(all) enum CanvasFontKerning {
  Auto
  Normal
  None
} derive(Eq,Show)

///|
pub fn CanvasFontKerning::from(value: String) -> CanvasFontKerning {
  match value {
    "auto" => Auto
    "normal" => Normal
    "none" => None
    _ => Auto
  }
}

///|
pub fn CanvasFontKerning::to_js(self : CanvasFontKerning) -> String {
  match self {
    Auto => "auto"
    Normal => "normal"
    None => "none"
  }
}
