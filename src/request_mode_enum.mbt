// Do not edit. This file is generated.
// MoonBit type: RequestMode
// Specifications: fetch.idl

///|
pub(all) enum RequestMode {
  Navigate
  SameOrigin
  NoCors
  Cors
} derive(Eq, Show)

///|
pub impl TJsValue for RequestMode with to_js(self : RequestMode) -> JsValue {
  match self {
    RequestMode::Navigate => TJsValue::to_js("navigate")
    RequestMode::SameOrigin => TJsValue::to_js("same-origin")
    RequestMode::NoCors => TJsValue::to_js("no-cors")
    RequestMode::Cors => TJsValue::to_js("cors")
  }
}

///|
pub fn RequestMode::from(value : String) -> RequestMode? {
  match value {
    "navigate" => Some(RequestMode::Navigate)
    "same-origin" => Some(RequestMode::SameOrigin)
    "no-cors" => Some(RequestMode::NoCors)
    "cors" => Some(RequestMode::Cors)
    _ => None
  }
}
