extern "js" fn url_pattern_new_ffi(input: JsValue, base_url: JsValue, options: JsValue) -> URLPattern = "(input, base_url, options) => new URLPattern(input, base_url, options)"

extern "js" fn url_pattern_new_2_ffi(input: JsValue, options: JsValue) -> URLPattern = "(input, options) => new URLPattern(input, options)"

extern "js" fn url_pattern_test_ffi_js(obj: JsValue, input: JsValue, base_url: JsValue) -> JsValue = "(obj, input, base_url) => obj.test(input, base_url)"

///|
fn url_pattern_test_ffi(obj: JsValue, input: JsValue, base_url: JsValue) -> Bool {
  url_pattern_test_ffi_js(obj, input, base_url).unsafe_cast()
}

extern "js" fn url_pattern_exec_ffi(obj: JsValue, input: JsValue, base_url: JsValue) -> JsValue = "(obj, input, base_url) => obj.exec(input, base_url)"

extern "js" fn url_pattern_protocol_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

///|
fn url_pattern_protocol_ffi(obj: JsValue) -> String {
  url_pattern_protocol_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_username_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.username"

///|
fn url_pattern_username_ffi(obj: JsValue) -> String {
  url_pattern_username_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_password_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.password"

///|
fn url_pattern_password_ffi(obj: JsValue) -> String {
  url_pattern_password_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_hostname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

///|
fn url_pattern_hostname_ffi(obj: JsValue) -> String {
  url_pattern_hostname_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_port_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port"

///|
fn url_pattern_port_ffi(obj: JsValue) -> String {
  url_pattern_port_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_pathname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

///|
fn url_pattern_pathname_ffi(obj: JsValue) -> String {
  url_pattern_pathname_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_search_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.search"

///|
fn url_pattern_search_ffi(obj: JsValue) -> String {
  url_pattern_search_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_hash_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hash"

///|
fn url_pattern_hash_ffi(obj: JsValue) -> String {
  url_pattern_hash_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_pattern_has_reg_exp_groups_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hasRegExpGroups"

///|
fn url_pattern_has_reg_exp_groups_ffi(obj: JsValue) -> Bool {
  url_pattern_has_reg_exp_groups_ffi_js(obj).unsafe_cast()
}