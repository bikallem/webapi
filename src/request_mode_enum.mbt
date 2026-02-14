// Do not edit. This file is generated.
// MoonBit type: RequestMode
// Specifications: fetch.idl

///|
pub(all) enum RequestMode {
  Navigate
  SameOrigin
  NoCors
  Cors
} derive(Eq)

///|
pub impl Show for RequestMode with output(self : RequestMode, logger : &Logger) -> Unit {
  match self {
    RequestMode::Navigate => logger.write_string("Navigate")
    RequestMode::SameOrigin => logger.write_string("SameOrigin")
    RequestMode::NoCors => logger.write_string("NoCors")
    RequestMode::Cors => logger.write_string("Cors")
  }
}

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

///|
fn RequestMode::from_unchecked(value : String) -> RequestMode {
  match value {
    "navigate" => RequestMode::Navigate
    "same-origin" => RequestMode::SameOrigin
    "no-cors" => RequestMode::NoCors
    "cors" => RequestMode::Cors
    _ => abort("unknown enum value")
  }
}

///|
pub fn RequestMode::value(self : RequestMode) -> String {
  let buf = StringBuilder::new()
  match self {
    RequestMode::Navigate => buf.write_string("navigate")
    RequestMode::SameOrigin => buf.write_string("same-origin")
    RequestMode::NoCors => buf.write_string("no-cors")
    RequestMode::Cors => buf.write_string("cors")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for RequestMode with from_js_any(value : JsAny) -> RequestMode {
  RequestMode::from_unchecked(value)
}
