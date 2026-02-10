extern "js" fn quota_exceeded_error_options_ffi(quota: JsValue, requested: JsValue) -> QuotaExceededErrorOptions = 
#|(quota, requested) => {
#|  const obj = {};
#|  if (quota !== undefined) obj.quota = quota;
#|  if (requested !== undefined) obj.requested = requested;
#|  return obj;
#|}

extern "js" fn quota_exceeded_error_options_empty_ffi() -> QuotaExceededErrorOptions = "() => {}"