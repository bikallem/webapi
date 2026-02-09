// Do not edit. This file is generated.
// MoonBit type: RequestDuplex
// Specifications: fetch.idl

///|
pub(all) enum RequestDuplex {
  Half
} derive(Eq, Show)

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
