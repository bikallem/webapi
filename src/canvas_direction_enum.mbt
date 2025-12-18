// Auto-generated MoonBit bindings for CanvasDirection enum
// Do not edit manually

///|
pub(all) enum CanvasDirection {
  Ltr
  Rtl
  Inherit
} derive(Eq,Show)

///|
pub fn CanvasDirection::from(value: String) -> CanvasDirection {
  match value {
    "ltr" => Ltr
    "rtl" => Rtl
    "inherit" => Inherit
    _ => Ltr
  }
}

///|
pub fn CanvasDirection::to_js(self : CanvasDirection) -> String {
  match self {
    Ltr => "ltr"
    Rtl => "rtl"
    Inherit => "inherit"
  }
}
