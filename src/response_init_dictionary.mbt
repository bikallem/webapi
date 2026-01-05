// Do not edit. This file is generated.
// MoonBit type: ResponseInit
// Specifications: fetch.idl

///|
#external
pub type ResponseInit

///|
pub impl TJsValue for ResponseInit with to_js(self : ResponseInit) -> JsValue = "%identity"

///|
extern "js" fn response_init_ffi(
  status : JsValue,
  status_text : JsValue,
  headers : JsValue,
) -> ResponseInit =
  #|(status, statusText, headers) => {
  #|  const obj = {};
  #|  if (status !== undefined) obj.status = status;
  #|  if (statusText !== undefined) obj.statusText = statusText;
  #|  if (headers !== undefined) obj.headers = headers;
  #|  return obj;
  #|}

///|
pub fn ResponseInit::new(
  status? : UInt = (200 : UInt),
  status_text? : String = "",
  headers? : HeadersInit,
) -> ResponseInit {
  response_init_ffi(
    TJsValue::to_js(status),
    TJsValue::to_js(status_text),
    opt_to_js(headers),
  )
}

///|
extern "js" fn response_init_empty_ffi() -> ResponseInit = "() => {}"

///|
pub fn ResponseInit::empty() -> ResponseInit {
  response_init_empty_ffi()
}
