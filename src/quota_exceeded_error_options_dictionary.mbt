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

///|
pub fn QuotaExceededErrorOptions::quota(
  self : QuotaExceededErrorOptions,
) -> Double? {
  quota_exceeded_error_options_get_quota_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn QuotaExceededErrorOptions::requested(
  self : QuotaExceededErrorOptions,
) -> Double? {
  quota_exceeded_error_options_get_requested_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn quota_exceeded_error_options_ffi(
  quota : JsValue,
  requested : JsValue,
) -> QuotaExceededErrorOptions =
  #|(quota, requested) => {
  #|  const obj = {};
  #|  if (quota !== undefined) obj.quota = quota;
  #|  if (requested !== undefined) obj.requested = requested;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn quota_exceeded_error_options_empty_ffi() -> QuotaExceededErrorOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn quota_exceeded_error_options_get_quota_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.quota"

///|
#cfg(target="js")
extern "js" fn quota_exceeded_error_options_get_requested_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.requested"

///|
#cfg(target="wasm-gc")
fn quota_exceeded_error_options_ffi(
  quota : JsValue,
  requested : JsValue,
) -> QuotaExceededErrorOptions = "webapi_QuotaExceededErrorOptions" "new"

///|
#cfg(target="wasm-gc")
fn quota_exceeded_error_options_empty_ffi() -> QuotaExceededErrorOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn quota_exceeded_error_options_get_quota_ffi(obj : JsValue) -> JsValue = "webapi_QuotaExceededErrorOptions" "get_quota"

///|
#cfg(target="wasm-gc")
fn quota_exceeded_error_options_get_requested_ffi(obj : JsValue) -> JsValue = "webapi_QuotaExceededErrorOptions" "get_requested"
