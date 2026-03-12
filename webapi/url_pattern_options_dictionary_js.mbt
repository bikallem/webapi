extern "js" fn url_pattern_options_ffi(ignore_case: JsValue) -> URLPatternOptions = 
#|(ignoreCase) => {
#|  const obj = {};
#|  if (ignoreCase !== undefined) obj.ignoreCase = ignoreCase;
#|  return obj;
#|}

extern "js" fn url_pattern_options_empty_ffi() -> URLPatternOptions = "() => {}"

extern "js" fn url_pattern_options_get_ignore_case_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ignoreCase"