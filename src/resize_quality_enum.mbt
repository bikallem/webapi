// Do not edit. This file is generated.
// MoonBit type: ResizeQuality
// Specifications: html.idl

///|
pub(all) enum ResizeQuality {
  Pixelated
  Low
  Medium
  High
} derive(Eq)

///|
pub impl Show for ResizeQuality with output(
  self : ResizeQuality,
  logger : &Logger,
) -> Unit {
  match self {
    ResizeQuality::Pixelated => logger.write_string("Pixelated")
    ResizeQuality::Low => logger.write_string("Low")
    ResizeQuality::Medium => logger.write_string("Medium")
    ResizeQuality::High => logger.write_string("High")
  }
}

///|
pub impl TJsValue for ResizeQuality with to_js(self : ResizeQuality) -> JsValue {
  match self {
    ResizeQuality::Pixelated => TJsValue::to_js("pixelated")
    ResizeQuality::Low => TJsValue::to_js("low")
    ResizeQuality::Medium => TJsValue::to_js("medium")
    ResizeQuality::High => TJsValue::to_js("high")
  }
}

///|
pub fn ResizeQuality::from(value : String) -> ResizeQuality? {
  match value {
    "pixelated" => Some(ResizeQuality::Pixelated)
    "low" => Some(ResizeQuality::Low)
    "medium" => Some(ResizeQuality::Medium)
    "high" => Some(ResizeQuality::High)
    _ => None
  }
}

///|
fn ResizeQuality::from_unchecked(value : String) -> ResizeQuality {
  match value {
    "pixelated" => ResizeQuality::Pixelated
    "low" => ResizeQuality::Low
    "medium" => ResizeQuality::Medium
    "high" => ResizeQuality::High
    _ => abort("unknown ResizeQuality enum value")
  }
}

///|
pub fn ResizeQuality::value(self : ResizeQuality) -> String {
  let buf = StringBuilder::new()
  match self {
    ResizeQuality::Pixelated => buf.write_string("pixelated")
    ResizeQuality::Low => buf.write_string("low")
    ResizeQuality::Medium => buf.write_string("medium")
    ResizeQuality::High => buf.write_string("high")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for ResizeQuality with from_js_any(value : JsAny) -> ResizeQuality {
  ResizeQuality::from_unchecked(value)
}
