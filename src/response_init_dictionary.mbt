// Do not edit. This file is generated.
// MoonBit type: ResponseInit
// Specifications: fetch.idl

///|
/// [ResponseInit](https://developer.mozilla.org/en-US/docs/Web/API/ResponseInit)
#external
pub type ResponseInit

///|
pub impl TJsValue for ResponseInit with to_js(self : ResponseInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ResponseInit with from_js_any(value : JsAny) -> ResponseInit = "%identity"

///|
pub fn ResponseInit::new(
  status? : UInt = (200 : UInt),
  status_text? : String = "",
  headers? : &THeadersInit,
) -> ResponseInit {
  response_init_ffi(
    TJsValue::to_js(status),
    TJsValue::to_js(status_text),
    match headers {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub fn ResponseInit::empty() -> ResponseInit {
  response_init_empty_ffi()
}
