// Do not edit. This file is generated.
// MoonBit type: IdleRequestOptions
// Specifications: requestidlecallback.idl

/// [IdleRequestOptions](https://developer.mozilla.org/en-US/docs/Web/API/IdleRequestOptions)
#external
pub type IdleRequestOptions

pub impl TJsValue for IdleRequestOptions with to_js(self: IdleRequestOptions) -> JsValue = "%identity"

pub impl FromJsAny for IdleRequestOptions with from_js_any(value : JsAny) -> IdleRequestOptions = "%identity"

pub fn IdleRequestOptions::new(timeout? : UInt) -> IdleRequestOptions {
  idle_request_options_ffi(opt_to_js(timeout))
}

pub fn IdleRequestOptions::empty() -> IdleRequestOptions { idle_request_options_empty_ffi() }

pub fn IdleRequestOptions::timeout(self : IdleRequestOptions) -> UInt? {
  idle_request_options_get_timeout_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn idle_request_options_ffi(timeout: JsValue) -> IdleRequestOptions = 
#|(timeout) => {
#|  const obj = {};
#|  if (timeout !== undefined) obj.timeout = timeout;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn idle_request_options_empty_ffi() -> IdleRequestOptions = "() => {}"

#cfg(target="js")
extern "js" fn idle_request_options_get_timeout_ffi(obj: JsValue) -> JsValue = "(obj) => obj.timeout"

#cfg(target="wasm-gc")
fn idle_request_options_ffi(timeout: JsValue) -> IdleRequestOptions = "webapi_IdleRequestOptions" "new"

#cfg(target="wasm-gc")
fn idle_request_options_empty_ffi() -> IdleRequestOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn idle_request_options_get_timeout_ffi(obj: JsValue) -> JsValue = "webapi_IdleRequestOptions" "get_timeout"