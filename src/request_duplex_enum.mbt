// Do not edit. This file is generated.
// MoonBit type: RequestDuplex
// Specifications: fetch.idl

///|
pub(all) enum RequestDuplex {
  Half
} derive(Eq)

///|
pub impl Show for RequestDuplex with output(
  self : RequestDuplex,
  logger : &Logger,
) -> Unit {
  match self {
    RequestDuplex::Half => logger.write_string("Half")
  }
}

///|
pub impl TJsValue for RequestDuplex with to_js(self : RequestDuplex) -> JsValue {
  match self {
    RequestDuplex::Half => TJsValue::to_js("half")
  }
}

///|
pub fn RequestDuplex::from(value : String) -> RequestDuplex? {
  match value {
    "half" => Some(RequestDuplex::Half)
    _ => None
  }
}

///|
fn RequestDuplex::from_unchecked(value : String) -> RequestDuplex {
  match value {
    "half" => RequestDuplex::Half
    _ => abort("unknown RequestDuplex enum value")
  }
}

///|
pub fn RequestDuplex::value(self : RequestDuplex) -> String {
  let buf = StringBuilder::new()
  match self {
    RequestDuplex::Half => buf.write_string("half")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for RequestDuplex with from_js_any(value : JsAny) -> RequestDuplex {
  RequestDuplex::from_unchecked(value)
}
