// Do not edit. This file is generated.
// MoonBit type: RequestPriority
// Specifications: fetch.idl

///|
pub(all) enum RequestPriority {
  High
  Low
  Auto
} derive(Eq, Show)

///|
pub impl TJsValue for RequestPriority with to_js(self : RequestPriority) -> JsValue {
  match self {
    RequestPriority::High => TJsValue::to_js("high")
    RequestPriority::Low => TJsValue::to_js("low")
    RequestPriority::Auto => TJsValue::to_js("auto")
  }
}

///|
pub fn RequestPriority::from(value : String) -> RequestPriority? {
  match value {
    "high" => Some(RequestPriority::High)
    "low" => Some(RequestPriority::Low)
    "auto" => Some(RequestPriority::Auto)
    _ => None
  }
}
