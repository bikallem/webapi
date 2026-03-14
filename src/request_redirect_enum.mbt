// Do not edit. This file is generated.
// MoonBit type: RequestRedirect
// Specifications: fetch.idl

///|
pub(all) enum RequestRedirect {
  Follow
  Error
  Manual
} derive(Eq)

///|
pub impl Show for RequestRedirect with output(
  self : RequestRedirect,
  logger : &Logger,
) -> Unit {
  match self {
    RequestRedirect::Follow => logger.write_string("Follow")
    RequestRedirect::Error => logger.write_string("Error")
    RequestRedirect::Manual => logger.write_string("Manual")
  }
}

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

///|
fn RequestRedirect::from_unchecked(value : String) -> RequestRedirect {
  match value {
    "follow" => RequestRedirect::Follow
    "error" => RequestRedirect::Error
    "manual" => RequestRedirect::Manual
    _ => RequestRedirect::Follow
  }
}

///|
pub fn RequestRedirect::value(self : RequestRedirect) -> String {
  match self {
    RequestRedirect::Follow => "follow"
    RequestRedirect::Error => "error"
    RequestRedirect::Manual => "manual"
  }
}

///|
pub impl FromJsAny for RequestRedirect with from_js_any(value : JsAny) -> RequestRedirect {
  RequestRedirect::from_unchecked(value)
}
