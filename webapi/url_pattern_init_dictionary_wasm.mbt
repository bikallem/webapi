///|
fn url_pattern_init_ffi(
  protocol : JsValue,
  username : JsValue,
  password : JsValue,
  hostname : JsValue,
  port : JsValue,
  pathname : JsValue,
  search : JsValue,
  hash : JsValue,
  base_url : JsValue,
) -> URLPatternInit = "webapi_URLPatternInit" "new"

///|
fn url_pattern_init_empty_ffi() -> URLPatternInit = "webapi_Dictionary" "empty"

///|
fn url_pattern_init_get_protocol_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_protocol"

///|
fn url_pattern_init_get_username_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_username"

///|
fn url_pattern_init_get_password_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_password"

///|
fn url_pattern_init_get_hostname_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_hostname"

///|
fn url_pattern_init_get_port_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_port"

///|
fn url_pattern_init_get_pathname_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_pathname"

///|
fn url_pattern_init_get_search_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_search"

///|
fn url_pattern_init_get_hash_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_hash"

///|
fn url_pattern_init_get_base_url_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_baseURL"
