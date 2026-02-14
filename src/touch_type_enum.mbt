// Do not edit. This file is generated.
// MoonBit type: TouchType
// Specifications: touch-events.idl

///|
pub(all) enum TouchType {
  Direct
  Stylus
} derive(Eq)

///|
pub impl Show for TouchType with output(self : TouchType, logger : &Logger) -> Unit {
  match self {
    TouchType::Direct => logger.write_string("Direct")
    TouchType::Stylus => logger.write_string("Stylus")
  }
}

///|
pub impl TJsValue for TouchType with to_js(self : TouchType) -> JsValue {
  match self {
    TouchType::Direct => TJsValue::to_js("direct")
    TouchType::Stylus => TJsValue::to_js("stylus")
  }
}

///|
pub fn TouchType::from(value : String) -> TouchType? {
  match value {
    "direct" => Some(TouchType::Direct)
    "stylus" => Some(TouchType::Stylus)
    _ => None
  }
}

///|
fn TouchType::from_unchecked(value : String) -> TouchType {
  match value {
    "direct" => TouchType::Direct
    "stylus" => TouchType::Stylus
    _ => abort("unknown TouchType enum value")
  }
}

///|
pub fn TouchType::value(self : TouchType) -> String {
  let buf = StringBuilder::new()
  match self {
    TouchType::Direct => buf.write_string("direct")
    TouchType::Stylus => buf.write_string("stylus")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for TouchType with from_js_any(value : JsAny) -> TouchType {
  TouchType::from_unchecked(value)
}
