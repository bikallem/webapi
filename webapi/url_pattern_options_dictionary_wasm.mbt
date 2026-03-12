fn url_pattern_options_ffi(ignore_case: JsValue) -> URLPatternOptions = "webapi_URLPatternOptions" "new"

fn url_pattern_options_empty_ffi() -> URLPatternOptions = "webapi_Dictionary" "empty"

fn url_pattern_options_get_ignore_case_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternOptions" "get_ignoreCase"