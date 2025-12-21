///|
#external
pub type QuotaExceededErrorOptions

///|
pub impl TJsValue for QuotaExceededErrorOptions with to_js(
  self : QuotaExceededErrorOptions,
) -> JsValue = "%identity"

///|
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
pub fn QuotaExceededErrorOptions::new(
  quota? : Double,
  requested? : Double,
) -> QuotaExceededErrorOptions {
  quota_exceeded_error_options_ffi(opt_to_js(quota), opt_to_js(requested))
}

///|
extern "js" fn quota_exceeded_error_options_empty_ffi() -> QuotaExceededErrorOptions = "() => {}"

///|
pub fn QuotaExceededErrorOptions::empty() -> QuotaExceededErrorOptions {
  quota_exceeded_error_options_empty_ffi()
}
