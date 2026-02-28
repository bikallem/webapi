///|
fn url_pattern_new_ffi(
  input : JsValue,
  base_url : JsValue,
  options : JsValue,
) -> URLPattern = "webapi_URLPattern" "new"

///|
fn url_pattern_new_2_ffi(input : JsValue, options : JsValue) -> URLPattern = "webapi_URLPattern" "new_2"

///|
fn url_pattern_test_ffi(
  obj : JsValue,
  input : JsValue,
  base_url : JsValue,
) -> Bool = "webapi_URLPattern" "test"

///|
fn url_pattern_exec_ffi(
  obj : JsValue,
  input : JsValue,
  base_url : JsValue,
) -> JsValue = "webapi_URLPattern" "exec"

///|
fn url_pattern_protocol_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_protocol"

///|
fn url_pattern_protocol_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_protocol_ffi_wasm(obj))
}

///|
fn url_pattern_username_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_username"

///|
fn url_pattern_username_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_username_ffi_wasm(obj))
}

///|
fn url_pattern_password_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_password"

///|
fn url_pattern_password_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_password_ffi_wasm(obj))
}

///|
fn url_pattern_hostname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_hostname"

///|
fn url_pattern_hostname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_hostname_ffi_wasm(obj))
}

///|
fn url_pattern_port_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_port"

///|
fn url_pattern_port_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_port_ffi_wasm(obj))
}

///|
fn url_pattern_pathname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_pathname"

///|
fn url_pattern_pathname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_pathname_ffi_wasm(obj))
}

///|
fn url_pattern_search_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_search"

///|
fn url_pattern_search_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_search_ffi_wasm(obj))
}

///|
fn url_pattern_hash_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URLPattern" "get_hash"

///|
fn url_pattern_hash_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pattern_hash_ffi_wasm(obj))
}

///|
fn url_pattern_has_reg_exp_groups_ffi(obj : JsValue) -> Bool = "webapi_URLPattern" "get_hasRegExpGroups"
