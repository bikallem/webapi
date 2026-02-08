// Do not edit. This file is generated.
// MoonBit type: RequestCredentials
// Specifications: fetch.idl

pub(all) enum RequestCredentials {
  Omit
  SameOrigin
  Include
} derive(Eq,Show)

pub impl TJsValue for RequestCredentials with to_js(self: RequestCredentials) -> JsValue {
  match self {
    RequestCredentials::Omit => TJsValue::to_js("omit")
    RequestCredentials::SameOrigin => TJsValue::to_js("same-origin")
    RequestCredentials::Include => TJsValue::to_js("include")
  }
}

pub fn RequestCredentials::from(value: String) -> RequestCredentials? {
  match value {
    "omit" => Some(RequestCredentials::Omit)
    "same-origin" => Some(RequestCredentials::SameOrigin)
    "include" => Some(RequestCredentials::Include)
    _ => None
  }
}