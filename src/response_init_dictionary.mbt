// Do not edit. This file is generated.
// MoonBit type: ResponseInit
// Specifications: fetch.idl

/// [ResponseInit](https://developer.mozilla.org/en-US/docs/Web/API/ResponseInit)
#external
pub type ResponseInit

pub impl TJsValue for ResponseInit with to_js(self: ResponseInit) -> JsValue = "%identity"

pub fn ResponseInit::new(status? : UInt = (200: UInt), 
status_text? : String = "", 
headers? : HeadersInit) -> ResponseInit {
  response_init_ffi(TJsValue::to_js(status), TJsValue::to_js(status_text), opt_to_js(headers))
}

pub fn ResponseInit::empty() -> ResponseInit { response_init_empty_ffi() }