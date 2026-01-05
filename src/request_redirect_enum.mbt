// Do not edit. This file is generated.
// MoonBit type: RequestRedirect
// Specifications: fetch.idl

///|
pub(all) enum RequestRedirect {
  Follow
  Error
  Manual
} derive(Eq, Show)

///|
pub impl TJsValue for RequestRedirect with to_js(self : RequestRedirect) -> JsValue {
  match self {
    RequestRedirect::Follow => TJsValue::to_js("follow")
    RequestRedirect::Error => TJsValue::to_js("error")
    RequestRedirect::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn RequestRedirect::from(value : String) -> RequestRedirect? {
  match value {
    "follow" => Some(RequestRedirect::Follow)
    "error" => Some(RequestRedirect::Error)
    "manual" => Some(RequestRedirect::Manual)
    _ => None
  }
}
