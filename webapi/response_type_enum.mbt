// Do not edit. This file is generated.
// MoonBit type: ResponseType
// Specifications: fetch.idl

///|
pub(all) enum ResponseType {
  Basic
  Cors
  Default
  Error
  Opaque
  Opaqueredirect
} derive(Eq)

///|
pub impl Show for ResponseType with output(
  self : ResponseType,
  logger : &Logger,
) -> Unit {
  match self {
    ResponseType::Basic => logger.write_string("Basic")
    ResponseType::Cors => logger.write_string("Cors")
    ResponseType::Default => logger.write_string("Default")
    ResponseType::Error => logger.write_string("Error")
    ResponseType::Opaque => logger.write_string("Opaque")
    ResponseType::Opaqueredirect => logger.write_string("Opaqueredirect")
  }
}

///|
pub impl TJsValue for ResponseType with to_js(self : ResponseType) -> JsValue {
  match self {
    ResponseType::Basic => TJsValue::to_js("basic")
    ResponseType::Cors => TJsValue::to_js("cors")
    ResponseType::Default => TJsValue::to_js("default")
    ResponseType::Error => TJsValue::to_js("error")
    ResponseType::Opaque => TJsValue::to_js("opaque")
    ResponseType::Opaqueredirect => TJsValue::to_js("opaqueredirect")
  }
}

///|
pub fn ResponseType::from(value : String) -> ResponseType? {
  match value {
    "basic" => Some(ResponseType::Basic)
    "cors" => Some(ResponseType::Cors)
    "default" => Some(ResponseType::Default)
    "error" => Some(ResponseType::Error)
    "opaque" => Some(ResponseType::Opaque)
    "opaqueredirect" => Some(ResponseType::Opaqueredirect)
    _ => None
  }
}

///|
fn ResponseType::from_unchecked(value : String) -> ResponseType {
  match value {
    "basic" => ResponseType::Basic
    "cors" => ResponseType::Cors
    "default" => ResponseType::Default
    "error" => ResponseType::Error
    "opaque" => ResponseType::Opaque
    "opaqueredirect" => ResponseType::Opaqueredirect
    _ => abort("unknown ResponseType enum value")
  }
}

///|
pub fn ResponseType::value(self : ResponseType) -> String {
  match self {
    ResponseType::Basic => "basic"
    ResponseType::Cors => "cors"
    ResponseType::Default => "default"
    ResponseType::Error => "error"
    ResponseType::Opaque => "opaque"
    ResponseType::Opaqueredirect => "opaqueredirect"
  }
}

///|
pub impl FromJsAny for ResponseType with from_js_any(value : JsAny) -> ResponseType {
  ResponseType::from_unchecked(value)
}
