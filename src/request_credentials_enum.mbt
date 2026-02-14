// Do not edit. This file is generated.
// MoonBit type: RequestCredentials
// Specifications: fetch.idl

///|
pub(all) enum RequestCredentials {
  Omit
  SameOrigin
  Include
} derive(Eq)

///|
pub impl Show for RequestCredentials with output(
  self : RequestCredentials,
  logger : &Logger,
) -> Unit {
  match self {
    RequestCredentials::Omit => logger.write_string("Omit")
    RequestCredentials::SameOrigin => logger.write_string("SameOrigin")
    RequestCredentials::Include => logger.write_string("Include")
  }
}

///|
pub impl TJsValue for RequestCredentials with to_js(self : RequestCredentials) -> JsValue {
  match self {
    RequestCredentials::Omit => TJsValue::to_js("omit")
    RequestCredentials::SameOrigin => TJsValue::to_js("same-origin")
    RequestCredentials::Include => TJsValue::to_js("include")
  }
}

///|
pub fn RequestCredentials::from(value : String) -> RequestCredentials? {
  match value {
    "omit" => Some(RequestCredentials::Omit)
    "same-origin" => Some(RequestCredentials::SameOrigin)
    "include" => Some(RequestCredentials::Include)
    _ => None
  }
}

///|
fn RequestCredentials::from_unchecked(value : String) -> RequestCredentials {
  match value {
    "omit" => RequestCredentials::Omit
    "same-origin" => RequestCredentials::SameOrigin
    "include" => RequestCredentials::Include
    _ => abort("unknown enum value")
  }
}

///|
pub fn RequestCredentials::value(self : RequestCredentials) -> String {
  let buf = StringBuilder::new()
  match self {
    RequestCredentials::Omit => buf.write_string("omit")
    RequestCredentials::SameOrigin => buf.write_string("same-origin")
    RequestCredentials::Include => buf.write_string("include")
  }
  buf.to_string()
}
