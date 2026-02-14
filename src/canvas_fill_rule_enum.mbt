// Do not edit. This file is generated.
// MoonBit type: CanvasFillRule
// Specifications: html.idl

///|
pub(all) enum CanvasFillRule {
  Nonzero
  Evenodd
} derive(Eq)

///|
pub impl Show for CanvasFillRule with output(
  self : CanvasFillRule,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasFillRule::Nonzero => logger.write_string("Nonzero")
    CanvasFillRule::Evenodd => logger.write_string("Evenodd")
  }
}

///|
pub impl TJsValue for CanvasFillRule with to_js(self : CanvasFillRule) -> JsValue {
  match self {
    CanvasFillRule::Nonzero => TJsValue::to_js("nonzero")
    CanvasFillRule::Evenodd => TJsValue::to_js("evenodd")
  }
}

///|
pub fn CanvasFillRule::from(value : String) -> CanvasFillRule? {
  match value {
    "nonzero" => Some(CanvasFillRule::Nonzero)
    "evenodd" => Some(CanvasFillRule::Evenodd)
    _ => None
  }
}

///|
fn CanvasFillRule::from_unchecked(value : String) -> CanvasFillRule {
  match value {
    "nonzero" => CanvasFillRule::Nonzero
    "evenodd" => CanvasFillRule::Evenodd
    _ => abort("unknown enum value")
  }
}

///|
pub fn CanvasFillRule::value(self : CanvasFillRule) -> String {
  let buf = StringBuilder::new()
  match self {
    CanvasFillRule::Nonzero => buf.write_string("nonzero")
    CanvasFillRule::Evenodd => buf.write_string("evenodd")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for CanvasFillRule with from_js_any(value : JsAny) -> CanvasFillRule {
  CanvasFillRule::from_unchecked(value)
}
