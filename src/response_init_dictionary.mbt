// Do not edit. This file is generated.
// MoonBit type: ResponseInit
// Specifications: fetch.idl

/// [ResponseInit](https://developer.mozilla.org/en-US/docs/Web/API/ResponseInit)
#external
pub type ResponseInit

pub impl TJsValue for ResponseInit with to_js(self: ResponseInit) -> JsValue = "%identity"

pub impl FromJsAny for ResponseInit with from_js_any(value : JsAny) -> ResponseInit = "%identity"

pub fn ResponseInit::new(status? : UInt, 
status_text? : String, 
headers? : &THeadersInit) -> ResponseInit {
  response_init_ffi(opt_to_js(status), opt_to_js(status_text), match headers {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub fn ResponseInit::empty() -> ResponseInit { response_init_empty_ffi() }

pub fn ResponseInit::status(self : ResponseInit) -> UInt? {
  response_init_get_status_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ResponseInit::status_text(self : ResponseInit) -> String? {
  response_init_get_status_text_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ResponseInit::headers(self : ResponseInit) -> HeadersInit? {
  response_init_get_headers_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn response_init_ffi(status: JsValue, status_text: JsValue, headers: JsValue) -> ResponseInit = 
#|(status, statusText, headers) => {
#|  const obj = {};
#|  if (status !== undefined) obj.status = status;
#|  if (statusText !== undefined) obj.statusText = statusText;
#|  if (headers !== undefined) obj.headers = headers;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn response_init_empty_ffi() -> ResponseInit = "() => {}"

#cfg(target="js")
extern "js" fn response_init_get_status_ffi(obj: JsValue) -> JsValue = "(obj) => obj.status"

#cfg(target="js")
extern "js" fn response_init_get_status_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.statusText"

#cfg(target="js")
extern "js" fn response_init_get_headers_ffi(obj: JsValue) -> JsValue = "(obj) => obj.headers"

#cfg(target="wasm-gc")
fn response_init_ffi(status: JsValue, status_text: JsValue, headers: JsValue) -> ResponseInit = "webapi_ResponseInit" "new"

#cfg(target="wasm-gc")
fn response_init_empty_ffi() -> ResponseInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn response_init_get_status_ffi(obj: JsValue) -> JsValue = "webapi_ResponseInit" "get_status"

#cfg(target="wasm-gc")
fn response_init_get_status_text_ffi(obj: JsValue) -> JsValue = "webapi_ResponseInit" "get_statusText"

#cfg(target="wasm-gc")
fn response_init_get_headers_ffi(obj: JsValue) -> JsValue = "webapi_ResponseInit" "get_headers"