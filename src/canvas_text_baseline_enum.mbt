// Do not edit. This file is generated.
// MoonBit type: CanvasTextBaseline
// Specifications: html.idl

///|
pub(all) enum CanvasTextBaseline {
  Top
  Hanging
  Middle
  Alphabetic
  Ideographic
  Bottom
} derive(Eq)

///|
pub impl Show for CanvasTextBaseline with output(
  self : CanvasTextBaseline,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasTextBaseline::Top => logger.write_string("Top")
    CanvasTextBaseline::Hanging => logger.write_string("Hanging")
    CanvasTextBaseline::Middle => logger.write_string("Middle")
    CanvasTextBaseline::Alphabetic => logger.write_string("Alphabetic")
    CanvasTextBaseline::Ideographic => logger.write_string("Ideographic")
    CanvasTextBaseline::Bottom => logger.write_string("Bottom")
  }
}

///|
pub impl TJsValue for CanvasTextBaseline with to_js(self : CanvasTextBaseline) -> JsValue {
  match self {
    CanvasTextBaseline::Top => TJsValue::to_js("top")
    CanvasTextBaseline::Hanging => TJsValue::to_js("hanging")
    CanvasTextBaseline::Middle => TJsValue::to_js("middle")
    CanvasTextBaseline::Alphabetic => TJsValue::to_js("alphabetic")
    CanvasTextBaseline::Ideographic => TJsValue::to_js("ideographic")
    CanvasTextBaseline::Bottom => TJsValue::to_js("bottom")
  }
}

///|
pub fn CanvasTextBaseline::from(value : String) -> CanvasTextBaseline? {
  match value {
    "top" => Some(CanvasTextBaseline::Top)
    "hanging" => Some(CanvasTextBaseline::Hanging)
    "middle" => Some(CanvasTextBaseline::Middle)
    "alphabetic" => Some(CanvasTextBaseline::Alphabetic)
    "ideographic" => Some(CanvasTextBaseline::Ideographic)
    "bottom" => Some(CanvasTextBaseline::Bottom)
    _ => None
  }
}

///|
fn CanvasTextBaseline::from_unchecked(value : String) -> CanvasTextBaseline {
  match value {
    "top" => CanvasTextBaseline::Top
    "hanging" => CanvasTextBaseline::Hanging
    "middle" => CanvasTextBaseline::Middle
    "alphabetic" => CanvasTextBaseline::Alphabetic
    "ideographic" => CanvasTextBaseline::Ideographic
    "bottom" => CanvasTextBaseline::Bottom
    _ => CanvasTextBaseline::Top
  }
}

///|
pub fn CanvasTextBaseline::value(self : CanvasTextBaseline) -> String {
  match self {
    CanvasTextBaseline::Top => "top"
    CanvasTextBaseline::Hanging => "hanging"
    CanvasTextBaseline::Middle => "middle"
    CanvasTextBaseline::Alphabetic => "alphabetic"
    CanvasTextBaseline::Ideographic => "ideographic"
    CanvasTextBaseline::Bottom => "bottom"
  }
}

///|
pub impl FromJsAny for CanvasTextBaseline with from_js_any(value : JsAny) -> CanvasTextBaseline {
  CanvasTextBaseline::from_unchecked(value)
}
