// Do not edit. This file is generated.
// MoonBit type: CanvasColorType
// Specifications: html.idl

///|
pub(all) enum CanvasColorType {
  Unorm8
  Float16
} derive(Eq)

///|
pub impl Show for CanvasColorType with output(
  self : CanvasColorType,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasColorType::Unorm8 => logger.write_string("Unorm8")
    CanvasColorType::Float16 => logger.write_string("Float16")
  }
}

///|
pub impl TJsValue for CanvasColorType with to_js(self : CanvasColorType) -> JsValue {
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
fn CanvasColorType::from_unchecked(value : String) -> CanvasColorType {
  match value {
    "unorm8" => CanvasColorType::Unorm8
    "float16" => CanvasColorType::Float16
    _ => abort("unknown enum value")
  }
}

///|
pub fn CanvasColorType::value(self : CanvasColorType) -> String {
  let buf = StringBuilder::new()
  match self {
    CanvasColorType::Unorm8 => buf.write_string("unorm8")
    CanvasColorType::Float16 => buf.write_string("float16")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for CanvasColorType with from_js_any(value : JsAny) -> CanvasColorType {
  CanvasColorType::from_unchecked(value)
}
