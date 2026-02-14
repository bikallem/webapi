// Do not edit. This file is generated.
// MoonBit type: EndingType
// Specifications: FileAPI.idl

///|
pub(all) enum EndingType {
  Transparent
  Native
} derive(Eq)

///|
pub impl Show for EndingType with output(self : EndingType, logger : &Logger) -> Unit {
  match self {
    EndingType::Transparent => logger.write_string("Transparent")
    EndingType::Native => logger.write_string("Native")
  }
}

///|
pub impl TJsValue for EndingType with to_js(self : EndingType) -> JsValue {
  match self {
    EndingType::Transparent => TJsValue::to_js("transparent")
    EndingType::Native => TJsValue::to_js("native")
  }
}

///|
pub fn EndingType::from(value : String) -> EndingType? {
  match value {
    "transparent" => Some(EndingType::Transparent)
    "native" => Some(EndingType::Native)
    _ => None
  }
}

///|
fn EndingType::from_unchecked(value : String) -> EndingType {
  match value {
    "transparent" => EndingType::Transparent
    "native" => EndingType::Native
    _ => abort("unknown EndingType enum value")
  }
}

///|
pub fn EndingType::value(self : EndingType) -> String {
  let buf = StringBuilder::new()
  match self {
    EndingType::Transparent => buf.write_string("transparent")
    EndingType::Native => buf.write_string("native")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for EndingType with from_js_any(value : JsAny) -> EndingType {
  EndingType::from_unchecked(value)
}
