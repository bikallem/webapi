// Do not edit. This file is generated.
// MoonBit type: URLPatternInit
// Specifications: urlpattern.idl

///|
/// [URLPatternInit](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternInit)
#external
pub type URLPatternInit

///|
pub impl TJsValue for URLPatternInit with to_js(self : URLPatternInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for URLPatternInit with from_js_any(value : JsAny) -> URLPatternInit = "%identity"

///|
pub fn URLPatternInit::new(
  protocol? : String,
  username? : String,
  password? : String,
  hostname? : String,
  port? : String,
  pathname? : String,
  search? : String,
  hash? : String,
  base_url? : String,
) -> URLPatternInit {
  url_pattern_init_ffi(
    opt_to_js(protocol),
    opt_to_js(username),
    opt_to_js(password),
    opt_to_js(hostname),
    opt_to_js(port),
    opt_to_js(pathname),
    opt_to_js(search),
    opt_to_js(hash),
    opt_to_js(base_url),
  )
}

///|
pub fn URLPatternInit::empty() -> URLPatternInit {
  url_pattern_init_empty_ffi()
}

///|
pub fn URLPatternInit::protocol(self : URLPatternInit) -> String? {
  url_pattern_init_get_protocol_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::username(self : URLPatternInit) -> String? {
  url_pattern_init_get_username_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::password(self : URLPatternInit) -> String? {
  url_pattern_init_get_password_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::hostname(self : URLPatternInit) -> String? {
  url_pattern_init_get_hostname_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::port(self : URLPatternInit) -> String? {
  url_pattern_init_get_port_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::pathname(self : URLPatternInit) -> String? {
  url_pattern_init_get_pathname_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::search(self : URLPatternInit) -> String? {
  url_pattern_init_get_search_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::hash(self : URLPatternInit) -> String? {
  url_pattern_init_get_hash_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternInit::base_url(self : URLPatternInit) -> String? {
  url_pattern_init_get_base_url_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn url_pattern_init_ffi(
  protocol : JsValue,
  username : JsValue,
  password : JsValue,
  hostname : JsValue,
  port : JsValue,
  pathname : JsValue,
  search : JsValue,
  hash : JsValue,
  base_url : JsValue,
) -> URLPatternInit =
  #|(protocol, username, password, hostname, port, pathname, search, hash, baseURL) => {
  #|  const obj = {};
  #|  if (protocol !== undefined) obj.protocol = protocol;
  #|  if (username !== undefined) obj.username = username;
  #|  if (password !== undefined) obj.password = password;
  #|  if (hostname !== undefined) obj.hostname = hostname;
  #|  if (port !== undefined) obj.port = port;
  #|  if (pathname !== undefined) obj.pathname = pathname;
  #|  if (search !== undefined) obj.search = search;
  #|  if (hash !== undefined) obj.hash = hash;
  #|  if (baseURL !== undefined) obj.baseURL = baseURL;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn url_pattern_init_empty_ffi() -> URLPatternInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_protocol_ffi(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_username_ffi(obj : JsValue) -> JsValue = "(obj) => obj.username"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_password_ffi(obj : JsValue) -> JsValue = "(obj) => obj.password"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_hostname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_port_ffi(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_pathname_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_search_ffi(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_hash_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
#cfg(target="js")
extern "js" fn url_pattern_init_get_base_url_ffi(obj : JsValue) -> JsValue = "(obj) => obj.baseURL"

///|
#cfg(target="wasm-gc")
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
#cfg(target="wasm-gc")
fn url_pattern_init_empty_ffi() -> URLPatternInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_protocol_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_protocol"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_username_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_username"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_password_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_password"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_hostname_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_hostname"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_port_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_port"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_pathname_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_pathname"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_search_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_search"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_hash_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_hash"

///|
#cfg(target="wasm-gc")
fn url_pattern_init_get_base_url_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternInit" "get_baseURL"
