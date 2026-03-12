// Do not edit. This file is generated.
// MoonBit type: CanvasLineCap
// Specifications: html.idl

pub(all) enum CanvasLineCap {
  Butt
  Round
  Square
} derive(Eq)

pub impl Show for CanvasLineCap with output(self : CanvasLineCap, logger : &Logger) -> Unit {
  match self {
    CanvasLineCap::Butt => logger.write_string("Butt")
    CanvasLineCap::Round => logger.write_string("Round")
    CanvasLineCap::Square => logger.write_string("Square")
  }
}

pub impl TJsValue for CanvasLineCap with to_js(self: CanvasLineCap) -> JsValue {
  match self {
    CanvasLineCap::Butt => TJsValue::to_js("butt")
    CanvasLineCap::Round => TJsValue::to_js("round")
    CanvasLineCap::Square => TJsValue::to_js("square")
  }
}

pub fn CanvasLineCap::from(value: String) -> CanvasLineCap? {
  match value {
    "butt" => Some(CanvasLineCap::Butt)
    "round" => Some(CanvasLineCap::Round)
    "square" => Some(CanvasLineCap::Square)
    _ => None
  }
}

fn CanvasLineCap::from_unchecked(value: String) -> CanvasLineCap {
  match value {
    "butt" => CanvasLineCap::Butt
    "round" => CanvasLineCap::Round
    "square" => CanvasLineCap::Square
    _ => abort("unknown CanvasLineCap enum value")
  }
}

pub fn CanvasLineCap::value(self: CanvasLineCap) -> String {
  match self {
    CanvasLineCap::Butt => "butt"
    CanvasLineCap::Round => "round"
    CanvasLineCap::Square => "square"
  }
}

pub impl FromJsAny for CanvasLineCap with from_js_any(value : JsAny) -> CanvasLineCap {
  CanvasLineCap::from_unchecked(value)
}