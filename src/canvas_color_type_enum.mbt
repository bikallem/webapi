// Do not edit. This file is generated.
// MoonBit type: CanvasColorType
// Specifications: html.idl

pub(all) enum CanvasColorType {
  Unorm8
  Float16
} derive(Eq,Show)

pub impl TJsValue for CanvasColorType with to_js(self: CanvasColorType) -> JsValue {
  match self {
    CanvasColorType::Unorm8 => TJsValue::to_js("unorm8")
    CanvasColorType::Float16 => TJsValue::to_js("float16")
  }
}

pub fn CanvasColorType::from(value: String) -> CanvasColorType? {
  match value {
    "unorm8" => Some(CanvasColorType::Unorm8)
    "float16" => Some(CanvasColorType::Float16)
    _ => None
  }
}