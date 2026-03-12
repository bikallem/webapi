// Do not edit. This file is generated.
// MoonBit type: URLPatternResult
// Specifications: urlpattern.idl

/// [URLPatternResult](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternResult)
#external
pub type URLPatternResult

pub impl TJsValue for URLPatternResult with to_js(self: URLPatternResult) -> JsValue = "%identity"

pub impl FromJsAny for URLPatternResult with from_js_any(value : JsAny) -> URLPatternResult = "%identity"

pub fn URLPatternResult::new(inputs? : Array[URLPatternInput], 
protocol? : URLPatternComponentResult, 
username? : URLPatternComponentResult, 
password? : URLPatternComponentResult, 
hostname? : URLPatternComponentResult, 
port? : URLPatternComponentResult, 
pathname? : URLPatternComponentResult, 
search? : URLPatternComponentResult, 
hash? : URLPatternComponentResult) -> URLPatternResult {
  url_pattern_result_ffi(opt_to_js(inputs), opt_to_js(protocol), opt_to_js(username), opt_to_js(password), opt_to_js(hostname), opt_to_js(port), opt_to_js(pathname), opt_to_js(search), opt_to_js(hash))
}

pub fn URLPatternResult::empty() -> URLPatternResult { url_pattern_result_empty_ffi() }

pub fn URLPatternResult::inputs(self : URLPatternResult) -> Array[URLPatternInput]? {
  url_pattern_result_get_inputs_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::protocol(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_protocol_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::username(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_username_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::password(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_password_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::hostname(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_hostname_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::port(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_port_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::pathname(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_pathname_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::search(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_search_ffi(TJsValue::to_js(self)).to_option()
}

pub fn URLPatternResult::hash(self : URLPatternResult) -> URLPatternComponentResult? {
  url_pattern_result_get_hash_ffi(TJsValue::to_js(self)).to_option()
}