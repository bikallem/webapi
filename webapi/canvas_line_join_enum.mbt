// Do not edit. This file is generated.
// MoonBit type: CanvasLineJoin
// Specifications: html.idl

///|
pub(all) enum CanvasLineJoin {
  Round
  Bevel
  Miter
} derive(Eq)

///|
pub impl Show for CanvasLineJoin with output(
  self : CanvasLineJoin,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasLineJoin::Round => logger.write_string("Round")
    CanvasLineJoin::Bevel => logger.write_string("Bevel")
    CanvasLineJoin::Miter => logger.write_string("Miter")
  }
}

///|
pub impl TJsValue for CanvasLineJoin with to_js(self : CanvasLineJoin) -> JsValue {
  match self {
    CanvasLineJoin::Round => TJsValue::to_js("round")
    CanvasLineJoin::Bevel => TJsValue::to_js("bevel")
    CanvasLineJoin::Miter => TJsValue::to_js("miter")
  }
}

///|
pub fn CanvasLineJoin::from(value : String) -> CanvasLineJoin? {
  match value {
    "round" => Some(CanvasLineJoin::Round)
    "bevel" => Some(CanvasLineJoin::Bevel)
    "miter" => Some(CanvasLineJoin::Miter)
    _ => None
  }
}

///|
fn CanvasLineJoin::from_unchecked(value : String) -> CanvasLineJoin {
  match value {
    "round" => CanvasLineJoin::Round
    "bevel" => CanvasLineJoin::Bevel
    "miter" => CanvasLineJoin::Miter
    _ => abort("unknown CanvasLineJoin enum value")
  }
}

///|
pub fn CanvasLineJoin::value(self : CanvasLineJoin) -> String {
  match self {
    CanvasLineJoin::Round => "round"
    CanvasLineJoin::Bevel => "bevel"
    CanvasLineJoin::Miter => "miter"
  }
}

///|
pub impl FromJsAny for CanvasLineJoin with from_js_any(value : JsAny) -> CanvasLineJoin {
  CanvasLineJoin::from_unchecked(value)
}
