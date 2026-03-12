fn url_pattern_result_ffi(inputs: JsValue, protocol: JsValue, username: JsValue, password: JsValue, hostname: JsValue, port: JsValue, pathname: JsValue, search: JsValue, hash: JsValue) -> URLPatternResult = "webapi_URLPatternResult" "new"

fn url_pattern_result_empty_ffi() -> URLPatternResult = "webapi_Dictionary" "empty"

fn url_pattern_result_get_inputs_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_inputs"

fn url_pattern_result_get_protocol_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_protocol"

fn url_pattern_result_get_username_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_username"

fn url_pattern_result_get_password_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_password"

fn url_pattern_result_get_hostname_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_hostname"

fn url_pattern_result_get_port_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_port"

fn url_pattern_result_get_pathname_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_pathname"

fn url_pattern_result_get_search_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_search"

fn url_pattern_result_get_hash_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternResult" "get_hash"