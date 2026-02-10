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
} derive(Eq, Show)

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
