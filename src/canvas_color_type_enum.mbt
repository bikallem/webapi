// Auto-generated MoonBit bindings for CanvasColorType enum
// Do not edit manually

///|
pub(all) enum CanvasColorType {
  Unorm8
  Float16
} derive(Eq,Show)

///|
pub fn CanvasColorType::from(value: String) -> CanvasColorType {
  match value {
    "unorm8" => Unorm8
    "float16" => Float16
    _ => Unorm8
  }
}

///|
pub fn CanvasColorType::to_js(self : CanvasColorType) -> String {
  match self {
    Unorm8 => "unorm8"
    Float16 => "float16"
  }
}
