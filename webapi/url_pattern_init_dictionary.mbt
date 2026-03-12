// Do not edit. This file is generated.
// MoonBit type: URLPatternInit
// Specifications: urlpattern.idl

/// [URLPatternInit](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternInit)
#external
pub type URLPatternInit

pub impl TJsValue for URLPatternInit with to_js(self: URLPatternInit) -> JsValue = "%identity"

pub impl FromJsAny for URLPatternInit with from_js_any(value : JsAny) -> URLPatternInit = "%identity"

pub fn URLPatternInit::new(protocol? : String, 
username? : String, 
password? : String, 
hostname? : String, 
port? : String, 
pathname? : String, 
search? : String, 
hash? : String, 
base_url? : String) -> URLPatternInit {
  url_pattern_init_ffi(opt_to_js(protocol), opt_to_js(username), opt_to_js(password), opt_to_js(hostname), opt_to_js(port), opt_to_js(pathname), opt_to_js(search), opt_to_js(hash), opt_to_js(base_url))
}

pub fn URLPatternInit::empty() -> URLPatternInit { url_pattern_init_empty_ffi() }

pub fn URLPatternInit::protocol(self : URLPatternInit) -> String? {
  url_pattern_init_get_protocol_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::username(self : URLPatternInit) -> String? {
  url_pattern_init_get_username_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::password(self : URLPatternInit) -> String? {
  url_pattern_init_get_password_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::hostname(self : URLPatternInit) -> String? {
  url_pattern_init_get_hostname_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::port(self : URLPatternInit) -> String? {
  url_pattern_init_get_port_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::pathname(self : URLPatternInit) -> String? {
  url_pattern_init_get_pathname_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::search(self : URLPatternInit) -> String? {
  url_pattern_init_get_search_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::hash(self : URLPatternInit) -> String? {
  url_pattern_init_get_hash_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternInit::base_url(self : URLPatternInit) -> String? {
  url_pattern_init_get_base_url_ffi(TJsValue::to_js(self)).to_option_prim()
}