// Do not edit. This file is generated.
// MoonBit type: CanvasTextAlign
// Specifications: html.idl

///|
pub(all) enum CanvasTextAlign {
  Start
  End
  Left
  Right
  Center
} derive(Eq)

///|
pub impl Show for CanvasTextAlign with output(
  self : CanvasTextAlign,
  logger : &Logger,
) -> Unit {
  match self {
    CanvasTextAlign::Start => logger.write_string("Start")
    CanvasTextAlign::End => logger.write_string("End")
    CanvasTextAlign::Left => logger.write_string("Left")
    CanvasTextAlign::Right => logger.write_string("Right")
    CanvasTextAlign::Center => logger.write_string("Center")
  }
}

///|
pub impl TJsValue for CanvasTextAlign with to_js(self : CanvasTextAlign) -> JsValue {
  match self {
    CanvasTextAlign::Start => TJsValue::to_js("start")
    CanvasTextAlign::End => TJsValue::to_js("end")
    CanvasTextAlign::Left => TJsValue::to_js("left")
    CanvasTextAlign::Right => TJsValue::to_js("right")
    CanvasTextAlign::Center => TJsValue::to_js("center")
  }
}

///|
pub fn CanvasTextAlign::from(value : String) -> CanvasTextAlign? {
  match value {
    "start" => Some(CanvasTextAlign::Start)
    "end" => Some(CanvasTextAlign::End)
    "left" => Some(CanvasTextAlign::Left)
    "right" => Some(CanvasTextAlign::Right)
    "center" => Some(CanvasTextAlign::Center)
    _ => None
  }
}

///|
fn CanvasTextAlign::from_unchecked(value : String) -> CanvasTextAlign {
  match value {
    "start" => CanvasTextAlign::Start
    "end" => CanvasTextAlign::End
    "left" => CanvasTextAlign::Left
    "right" => CanvasTextAlign::Right
    "center" => CanvasTextAlign::Center
    _ => CanvasTextAlign::Start
  }
}

///|
pub fn CanvasTextAlign::value(self : CanvasTextAlign) -> String {
  match self {
    CanvasTextAlign::Start => "start"
    CanvasTextAlign::End => "end"
    CanvasTextAlign::Left => "left"
    CanvasTextAlign::Right => "right"
    CanvasTextAlign::Center => "center"
  }
}

///|
pub impl FromJsAny for CanvasTextAlign with from_js_any(value : JsAny) -> CanvasTextAlign {
  CanvasTextAlign::from_unchecked(value)
}
