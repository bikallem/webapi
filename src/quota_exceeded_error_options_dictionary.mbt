// Do not edit. This file is generated.
// MoonBit type: QuotaExceededErrorOptions
// Specifications: webidl.idl

///|
/// [QuotaExceededErrorOptions](https://developer.mozilla.org/en-US/docs/Web/API/QuotaExceededErrorOptions)
#external
pub type QuotaExceededErrorOptions

///|
pub impl TJsValue for QuotaExceededErrorOptions with to_js(
  self : QuotaExceededErrorOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for QuotaExceededErrorOptions with from_js_any(value : JsAny) -> QuotaExceededErrorOptions = "%identity"

///|
pub fn QuotaExceededErrorOptions::new(
  quota? : Double,
  requested? : Double,
) -> QuotaExceededErrorOptions {
  quota_exceeded_error_options_ffi(opt_to_js(quota), opt_to_js(requested))
}

///|
pub fn QuotaExceededErrorOptions::empty() -> QuotaExceededErrorOptions {
  quota_exceeded_error_options_empty_ffi()
}
