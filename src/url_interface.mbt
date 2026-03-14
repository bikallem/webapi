// Do not edit. This file is generated.
// MoonBit type: URL
// Specifications: FileAPI.idl, url.idl

///|
/// [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL)
#external
pub type URL

///|
pub impl TJsValue for URL with to_js(self : URL) -> JsValue = "%identity"

///|
pub impl FromJsAny for URL with from_js_any(value : JsAny) -> URL = "%identity"

///|
pub fn[T : TURL] URL::into(self : URL) -> T = "%identity"

///|
pub impl TURL for URL

///|
pub fn URL::new(url : String, base? : String) -> URL {
  url_new_ffi(TJsValue::to_js(url), opt_to_js(base))
}

///|
pub(open) trait TURLCreateObjectURLObj: TJsValue {}

///|
pub impl TURLCreateObjectURLObj for Blob

///|
pub impl TURLCreateObjectURLObj for MediaSource

///|
/// [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) interface.
pub trait TURL: TJsValue {
  href(self : Self) -> String = _
  set_href(self : Self, href : String) -> Unit = _
  origin(self : Self) -> String = _
  protocol(self : Self) -> String = _
  set_protocol(self : Self, protocol : String) -> Unit = _
  username(self : Self) -> String = _
  set_username(self : Self, username : String) -> Unit = _
  password(self : Self) -> String = _
  set_password(self : Self, password : String) -> Unit = _
  host(self : Self) -> String = _
  set_host(self : Self, host : String) -> Unit = _
  hostname(self : Self) -> String = _
  set_hostname(self : Self, hostname : String) -> Unit = _
  port(self : Self) -> String = _
  set_port(self : Self, port : String) -> Unit = _
  pathname(self : Self) -> String = _
  set_pathname(self : Self, pathname : String) -> Unit = _
  search(self : Self) -> String = _
  set_search(self : Self, search : String) -> Unit = _
  search_params(self : Self) -> URLSearchParams = _
  hash(self : Self) -> String = _
  set_hash(self : Self, hash : String) -> Unit = _
  to_json(self : Self) -> String = _
}

///|
/// [URL.parse](https://developer.mozilla.org/en-US/docs/Web/API/URL/parse)
pub fn URL::parse_opt(url : String, base? : String) -> URL? {
  url_parse_ffi(TJsValue::to_js(url), opt_to_js(base)).to_option()
}

///|
/// [URL.canParse](https://developer.mozilla.org/en-US/docs/Web/API/URL/canParse)
pub fn URL::can_parse(url : String, base? : String) -> Bool {
  url_can_parse_ffi(TJsValue::to_js(url), opt_to_js(base))
}

///|
/// [URL.href](https://developer.mozilla.org/en-US/docs/Web/API/URL/href)
impl TURL with href(self : Self) -> String {
  url_href_ffi(TJsValue::to_js(self))
}

///|
/// [URL.href](https://developer.mozilla.org/en-US/docs/Web/API/URL/href)
impl TURL with set_href(self : Self, href : String) -> Unit {
  url_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
/// [URL.origin](https://developer.mozilla.org/en-US/docs/Web/API/URL/origin)
impl TURL with origin(self : Self) -> String {
  url_origin_ffi(TJsValue::to_js(self))
}

///|
/// [URL.protocol](https://developer.mozilla.org/en-US/docs/Web/API/URL/protocol)
impl TURL with protocol(self : Self) -> String {
  url_protocol_ffi(TJsValue::to_js(self))
}

///|
/// [URL.protocol](https://developer.mozilla.org/en-US/docs/Web/API/URL/protocol)
impl TURL with set_protocol(self : Self, protocol : String) -> Unit {
  url_set_protocol_ffi(TJsValue::to_js(self), TJsValue::to_js(protocol))
}

///|
/// [URL.username](https://developer.mozilla.org/en-US/docs/Web/API/URL/username)
impl TURL with username(self : Self) -> String {
  url_username_ffi(TJsValue::to_js(self))
}

///|
/// [URL.username](https://developer.mozilla.org/en-US/docs/Web/API/URL/username)
impl TURL with set_username(self : Self, username : String) -> Unit {
  url_set_username_ffi(TJsValue::to_js(self), TJsValue::to_js(username))
}

///|
/// [URL.password](https://developer.mozilla.org/en-US/docs/Web/API/URL/password)
impl TURL with password(self : Self) -> String {
  url_password_ffi(TJsValue::to_js(self))
}

///|
/// [URL.password](https://developer.mozilla.org/en-US/docs/Web/API/URL/password)
impl TURL with set_password(self : Self, password : String) -> Unit {
  url_set_password_ffi(TJsValue::to_js(self), TJsValue::to_js(password))
}

///|
/// [URL.host](https://developer.mozilla.org/en-US/docs/Web/API/URL/host)
impl TURL with host(self : Self) -> String {
  url_host_ffi(TJsValue::to_js(self))
}

///|
/// [URL.host](https://developer.mozilla.org/en-US/docs/Web/API/URL/host)
impl TURL with set_host(self : Self, host : String) -> Unit {
  url_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
/// [URL.hostname](https://developer.mozilla.org/en-US/docs/Web/API/URL/hostname)
impl TURL with hostname(self : Self) -> String {
  url_hostname_ffi(TJsValue::to_js(self))
}

///|
/// [URL.hostname](https://developer.mozilla.org/en-US/docs/Web/API/URL/hostname)
impl TURL with set_hostname(self : Self, hostname : String) -> Unit {
  url_set_hostname_ffi(TJsValue::to_js(self), TJsValue::to_js(hostname))
}

///|
/// [URL.port](https://developer.mozilla.org/en-US/docs/Web/API/URL/port)
impl TURL with port(self : Self) -> String {
  url_port_ffi(TJsValue::to_js(self))
}

///|
/// [URL.port](https://developer.mozilla.org/en-US/docs/Web/API/URL/port)
impl TURL with set_port(self : Self, port : String) -> Unit {
  url_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
/// [URL.pathname](https://developer.mozilla.org/en-US/docs/Web/API/URL/pathname)
impl TURL with pathname(self : Self) -> String {
  url_pathname_ffi(TJsValue::to_js(self))
}

///|
/// [URL.pathname](https://developer.mozilla.org/en-US/docs/Web/API/URL/pathname)
impl TURL with set_pathname(self : Self, pathname : String) -> Unit {
  url_set_pathname_ffi(TJsValue::to_js(self), TJsValue::to_js(pathname))
}

///|
/// [URL.search](https://developer.mozilla.org/en-US/docs/Web/API/URL/search)
impl TURL with search(self : Self) -> String {
  url_search_ffi(TJsValue::to_js(self))
}

///|
/// [URL.search](https://developer.mozilla.org/en-US/docs/Web/API/URL/search)
impl TURL with set_search(self : Self, search : String) -> Unit {
  url_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

///|
/// [URL.searchParams](https://developer.mozilla.org/en-US/docs/Web/API/URL/searchParams)
impl TURL with search_params(self : Self) -> URLSearchParams {
  url_search_params_ffi(TJsValue::to_js(self))
}

///|
/// [URL.hash](https://developer.mozilla.org/en-US/docs/Web/API/URL/hash)
impl TURL with hash(self : Self) -> String {
  url_hash_ffi(TJsValue::to_js(self))
}

///|
/// [URL.hash](https://developer.mozilla.org/en-US/docs/Web/API/URL/hash)
impl TURL with set_hash(self : Self, hash : String) -> Unit {
  url_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

///|
/// [URL.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/URL/toJSON)
impl TURL with to_json(self : Self) -> String {
  url_to_json_ffi(TJsValue::to_js(self))
}

///|
/// [URL.createObjectURL](https://developer.mozilla.org/en-US/docs/Web/API/URL/createObjectURL)
pub fn URL::create_object_url(obj : &TURLCreateObjectURLObj) -> String {
  url_create_object_url_ffi(obj.to_js())
}

///|
/// [URL.revokeObjectURL](https://developer.mozilla.org/en-US/docs/Web/API/URL/revokeObjectURL)
pub fn URL::revoke_object_url(url : String) -> Unit {
  url_revoke_object_url_ffi(TJsValue::to_js(url))
}

///|
pub fn URL::parse(url : String, base? : String) -> URL {
  let result = match base {
    Some(base) => URL::parse_opt(url, base~)
    None => URL::parse_opt(url)
  }
  result.unwrap()
}

///|
#cfg(target="js")
extern "js" fn url_new_ffi(url : JsValue, base : JsValue) -> URL = "(url, base) => new URL(url, base)"

///|
#cfg(target="js")
extern "js" fn url_parse_ffi(url : JsValue, base : JsValue) -> JsValue = "(url, base) => URL.parse(url, base)"

///|
#cfg(target="js")
extern "js" fn url_can_parse_ffi_js(url : JsValue, base : JsValue) -> JsValue = "(url, base) => URL.canParse(url, base)"

///|
#cfg(target="js")
fn url_can_parse_ffi(url : JsValue, base : JsValue) -> Bool {
  url_can_parse_ffi_js(url, base).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn url_href_ffi(obj : JsValue) -> String {
  url_href_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

///|
#cfg(target="js")
extern "js" fn url_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn url_origin_ffi(obj : JsValue) -> String {
  url_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_protocol_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
fn url_protocol_ffi(obj : JsValue) -> String {
  url_protocol_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_protocol_ffi(obj : JsValue, protocol : JsValue) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
#cfg(target="js")
extern "js" fn url_username_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.username"

///|
#cfg(target="js")
fn url_username_ffi(obj : JsValue) -> String {
  url_username_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_username_ffi(obj : JsValue, username : JsValue) -> Unit = "(obj, username) => { obj.username = username; }"

///|
#cfg(target="js")
extern "js" fn url_password_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.password"

///|
#cfg(target="js")
fn url_password_ffi(obj : JsValue) -> String {
  url_password_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_password_ffi(obj : JsValue, password : JsValue) -> Unit = "(obj, password) => { obj.password = password; }"

///|
#cfg(target="js")
extern "js" fn url_host_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
#cfg(target="js")
fn url_host_ffi(obj : JsValue) -> String {
  url_host_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
#cfg(target="js")
extern "js" fn url_hostname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
#cfg(target="js")
fn url_hostname_ffi(obj : JsValue) -> String {
  url_hostname_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_hostname_ffi(obj : JsValue, hostname : JsValue) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
#cfg(target="js")
extern "js" fn url_port_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
fn url_port_ffi(obj : JsValue) -> String {
  url_port_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
#cfg(target="js")
extern "js" fn url_pathname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
#cfg(target="js")
fn url_pathname_ffi(obj : JsValue) -> String {
  url_pathname_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_pathname_ffi(obj : JsValue, pathname : JsValue) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
#cfg(target="js")
extern "js" fn url_search_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
#cfg(target="js")
fn url_search_ffi(obj : JsValue) -> String {
  url_search_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

///|
#cfg(target="js")
extern "js" fn url_search_params_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.searchParams"

///|
#cfg(target="js")
fn url_search_params_ffi(obj : JsValue) -> URLSearchParams {
  url_search_params_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_hash_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
#cfg(target="js")
fn url_hash_ffi(obj : JsValue) -> String {
  url_hash_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
#cfg(target="js")
extern "js" fn url_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn url_to_json_ffi(obj : JsValue) -> String {
  url_to_json_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_create_object_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => URL.createObjectURL(obj)"

///|
#cfg(target="js")
fn url_create_object_url_ffi(obj : JsValue) -> String {
  url_create_object_url_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn url_revoke_object_url_ffi(url : JsValue) -> Unit = "(url) => URL.revokeObjectURL(url)"

///|
#cfg(target="wasm-gc")
fn url_new_ffi(url : JsValue, base : JsValue) -> URL = "webapi_URL" "new"

///|
#cfg(target="wasm-gc")
fn url_parse_ffi(url : JsValue, base : JsValue) -> JsValue = "webapi_URL" "parse"

///|
#cfg(target="wasm-gc")
fn url_can_parse_ffi(url : JsValue, base : JsValue) -> Bool = "webapi_URL" "canParse"

///|
#cfg(target="wasm-gc")
fn url_href_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_href"

///|
#cfg(target="wasm-gc")
fn url_href_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_href_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "webapi_URL" "set_href"

///|
#cfg(target="wasm-gc")
fn url_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_origin"

///|
#cfg(target="wasm-gc")
fn url_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_protocol_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_protocol"

///|
#cfg(target="wasm-gc")
fn url_protocol_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_protocol_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_protocol_ffi(obj : JsValue, protocol : JsValue) -> Unit = "webapi_URL" "set_protocol"

///|
#cfg(target="wasm-gc")
fn url_username_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_username"

///|
#cfg(target="wasm-gc")
fn url_username_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_username_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_username_ffi(obj : JsValue, username : JsValue) -> Unit = "webapi_URL" "set_username"

///|
#cfg(target="wasm-gc")
fn url_password_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_password"

///|
#cfg(target="wasm-gc")
fn url_password_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_password_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_password_ffi(obj : JsValue, password : JsValue) -> Unit = "webapi_URL" "set_password"

///|
#cfg(target="wasm-gc")
fn url_host_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_host"

///|
#cfg(target="wasm-gc")
fn url_host_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_host_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "webapi_URL" "set_host"

///|
#cfg(target="wasm-gc")
fn url_hostname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_hostname"

///|
#cfg(target="wasm-gc")
fn url_hostname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_hostname_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_hostname_ffi(obj : JsValue, hostname : JsValue) -> Unit = "webapi_URL" "set_hostname"

///|
#cfg(target="wasm-gc")
fn url_port_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_port"

///|
#cfg(target="wasm-gc")
fn url_port_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_port_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "webapi_URL" "set_port"

///|
#cfg(target="wasm-gc")
fn url_pathname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_pathname"

///|
#cfg(target="wasm-gc")
fn url_pathname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_pathname_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_pathname_ffi(obj : JsValue, pathname : JsValue) -> Unit = "webapi_URL" "set_pathname"

///|
#cfg(target="wasm-gc")
fn url_search_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_search"

///|
#cfg(target="wasm-gc")
fn url_search_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_search_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "webapi_URL" "set_search"

///|
#cfg(target="wasm-gc")
fn url_search_params_ffi(obj : JsValue) -> URLSearchParams = "webapi_URL" "get_searchParams"

///|
#cfg(target="wasm-gc")
fn url_hash_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "get_hash"

///|
#cfg(target="wasm-gc")
fn url_hash_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_hash_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "webapi_URL" "set_hash"

///|
#cfg(target="wasm-gc")
fn url_to_json_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "toJSON"

///|
#cfg(target="wasm-gc")
fn url_to_json_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_to_json_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_create_object_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_URL" "createObjectURL"

///|
#cfg(target="wasm-gc")
fn url_create_object_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(url_create_object_url_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn url_revoke_object_url_ffi(url : JsValue) -> Unit = "webapi_URL" "revokeObjectURL"
