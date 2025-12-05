// Auto-generated MoonBit bindings for CanvasColorType

// Do not edit manually

///|
pub enum CanvasColorType {
  Unorm8
  Float16
} derive(Eq)

///|
pub impl TJsValue for CanvasColorType with to_js(self) {
  match self {
    CanvasColorType::Unorm8 => TJsValue::to_js("unorm8")
    CanvasColorType::Float16 => TJsValue::to_js("float16")
  }
}

///|
pub fn CanvasColorType::from(value : String) -> CanvasColorType? {
  match value {
    "unorm8" => Some(CanvasColorType::Unorm8)
    "float16" => Some(CanvasColorType::Float16)
    _ => None
  }
}

///|
pub impl Show for CanvasColorType with output(self, logger) {
  match self {
    CanvasColorType::Unorm8 => logger.write_string("unorm8")
    CanvasColorType::Float16 => logger.write_string("float16")
  }
}
