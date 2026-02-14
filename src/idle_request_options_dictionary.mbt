// Do not edit. This file is generated.
// MoonBit type: IdleRequestOptions
// Specifications: requestidlecallback.idl

///|
/// [IdleRequestOptions](https://developer.mozilla.org/en-US/docs/Web/API/IdleRequestOptions)
#external
pub type IdleRequestOptions

///|
pub impl TJsValue for IdleRequestOptions with to_js(self : IdleRequestOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for IdleRequestOptions with from_js_any(value : JsAny) -> IdleRequestOptions = "%identity"

///|
pub fn IdleRequestOptions::new(timeout? : UInt) -> IdleRequestOptions {
  idle_request_options_ffi(opt_to_js(timeout))
}

///|
pub fn IdleRequestOptions::empty() -> IdleRequestOptions {
  idle_request_options_empty_ffi()
}
