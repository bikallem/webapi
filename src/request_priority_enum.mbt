// Do not edit. This file is generated.
// MoonBit type: RequestPriority
// Specifications: fetch.idl

///|
pub(all) enum RequestPriority {
  High
  Low
  Auto
} derive(Eq)

///|
pub impl Show for RequestPriority with output(
  self : RequestPriority,
  logger : &Logger,
) -> Unit {
  match self {
    RequestPriority::High => logger.write_string("High")
    RequestPriority::Low => logger.write_string("Low")
    RequestPriority::Auto => logger.write_string("Auto")
  }
}

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

///|
fn RequestPriority::from_unchecked(value : String) -> RequestPriority {
  match value {
    "high" => RequestPriority::High
    "low" => RequestPriority::Low
    "auto" => RequestPriority::Auto
    _ => abort("unknown RequestPriority enum value")
  }
}

///|
pub fn RequestPriority::value(self : RequestPriority) -> String {
  let buf = StringBuilder::new()
  match self {
    RequestPriority::High => buf.write_string("high")
    RequestPriority::Low => buf.write_string("low")
    RequestPriority::Auto => buf.write_string("auto")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for RequestPriority with from_js_any(value : JsAny) -> RequestPriority {
  RequestPriority::from_unchecked(value)
}
