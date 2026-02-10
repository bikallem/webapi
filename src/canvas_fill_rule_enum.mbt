// Do not edit. This file is generated.
// MoonBit type: CanvasFillRule
// Specifications: html.idl

pub(all) enum CanvasFillRule {
  Nonzero
  Evenodd
} derive(Eq,Show)

pub impl TJsValue for CanvasFillRule with to_js(self: CanvasFillRule) -> JsValue {
  match self {
    CanvasFillRule::Nonzero => TJsValue::to_js("nonzero")
    CanvasFillRule::Evenodd => TJsValue::to_js("evenodd")
  }
}

pub fn CanvasFillRule::from(value: String) -> CanvasFillRule? {
  match value {
    "nonzero" => Some(CanvasFillRule::Nonzero)
    "evenodd" => Some(CanvasFillRule::Evenodd)
    _ => None
  }
}