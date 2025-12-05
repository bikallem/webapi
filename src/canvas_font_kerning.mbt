// Auto-generated MoonBit bindings for CanvasFontKerning

// Do not edit manually

///|
pub enum CanvasFontKerning {
  Auto
  Normal
  None
} derive(Eq)

///|
pub impl TJsValue for CanvasFontKerning with to_js(self) {
  match self {
    CanvasFontKerning::Auto => TJsValue::to_js("auto")
    CanvasFontKerning::Normal => TJsValue::to_js("normal")
    CanvasFontKerning::None => TJsValue::to_js("none")
  }
}

///|
pub fn CanvasFontKerning::from(value : String) -> CanvasFontKerning? {
  match value {
    "auto" => Some(CanvasFontKerning::Auto)
    "normal" => Some(CanvasFontKerning::Normal)
    "none" => Some(CanvasFontKerning::None)
    _ => None
  }
}

///|
pub impl Show for CanvasFontKerning with output(self, logger) {
  match self {
    CanvasFontKerning::Auto => logger.write_string("auto")
    CanvasFontKerning::Normal => logger.write_string("normal")
    CanvasFontKerning::None => logger.write_string("none")
  }
}
