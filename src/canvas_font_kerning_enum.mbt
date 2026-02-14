// Do not edit. This file is generated.
// MoonBit type: CanvasFontKerning
// Specifications: html.idl

///|
pub(all) enum CanvasFontKerning {
  Auto
  Normal
  None
} derive(Eq)

///|
pub impl Show for CanvasFontKerning with output(
  self : CanvasFontKerning,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasFontKerning::Auto => logger.write_string("Auto")
    CanvasFontKerning::Normal => logger.write_string("Normal")
    CanvasFontKerning::None => logger.write_string("None")
  }
}

///|
pub impl TJsValue for CanvasFontKerning with to_js(self : CanvasFontKerning) -> JsValue {
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
fn CanvasFontKerning::from_unchecked(value : String) -> CanvasFontKerning {
  match value {
    "auto" => CanvasFontKerning::Auto
    "normal" => CanvasFontKerning::Normal
    "none" => CanvasFontKerning::None
    _ => abort("unknown enum value")
  }
}

///|
pub fn CanvasFontKerning::value(self : CanvasFontKerning) -> String {
  let buf = StringBuilder::new()
  match self {
    CanvasFontKerning::Auto => buf.write_string("auto")
    CanvasFontKerning::Normal => buf.write_string("normal")
    CanvasFontKerning::None => buf.write_string("none")
  }
  buf.to_string()
}
