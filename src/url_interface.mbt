// Do not edit. This file is generated.
// MoonBit type: URL
// Specifications: FileAPI.idl, url.idl

///|
#external
pub type URL

///|
pub impl TJsValue for URL with to_js(self : URL) -> JsValue = "%identity"

///|
pub fn[T : TURL] URL::into(self : URL) -> T = "%identity"

///|
pub impl TURL for URL

///|
extern "js" fn url_new_ffi(url : JsValue, base : JsValue) -> URL = "(url, base) => new URL(url, base)"

///|
pub fn URL::new(url : String, base? : String) -> URL {
  url_new_ffi(TJsValue::to_js(url), opt_to_js(base))
}

///|
pub(open) trait TURLCreateObjectURLObj {
  to_js(self : Self) -> JsValue
}

///|
pub impl TURLCreateObjectURLObj for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TURLCreateObjectURLObj for MediaSource with to_js(self : MediaSource) -> JsValue = "%identity"

///|
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
extern "js" fn url_parse_ffi(url : JsValue, base : JsValue) -> URL = "(url, base) => URL.parse(url, base)"

///|
pub fn URL::parse(url : String, base? : String) -> URL {
  url_parse_ffi(TJsValue::to_js(url), opt_to_js(base))
}

///|
extern "js" fn url_can_parse_ffi(url : JsValue, base : JsValue) -> Bool = "(url, base) => URL.canParse(url, base)"

///|
pub fn URL::can_parse(url : String, base? : String) -> Bool {
  url_can_parse_ffi(TJsValue::to_js(url), opt_to_js(base))
}

///|
extern "js" fn url_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
impl TURL with href(self : Self) -> String {
  url_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

///|
impl TURL with set_href(self : Self, href : String) -> Unit {
  url_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
extern "js" fn url_origin_ffi(obj : JsValue) -> String = "(obj) => obj.origin"

///|
impl TURL with origin(self : Self) -> String {
  url_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_protocol_ffi(obj : JsValue) -> String = "(obj) => obj.protocol"

///|
impl TURL with protocol(self : Self) -> String {
  url_protocol_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_protocol_ffi(obj : JsValue, protocol : JsValue) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
impl TURL with set_protocol(self : Self, protocol : String) -> Unit {
  url_set_protocol_ffi(TJsValue::to_js(self), TJsValue::to_js(protocol))
}

///|
extern "js" fn url_username_ffi(obj : JsValue) -> String = "(obj) => obj.username"

///|
impl TURL with username(self : Self) -> String {
  url_username_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_username_ffi(obj : JsValue, username : JsValue) -> Unit = "(obj, username) => { obj.username = username; }"

///|
impl TURL with set_username(self : Self, username : String) -> Unit {
  url_set_username_ffi(TJsValue::to_js(self), TJsValue::to_js(username))
}

///|
extern "js" fn url_password_ffi(obj : JsValue) -> String = "(obj) => obj.password"

///|
impl TURL with password(self : Self) -> String {
  url_password_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_password_ffi(obj : JsValue, password : JsValue) -> Unit = "(obj, password) => { obj.password = password; }"

///|
impl TURL with set_password(self : Self, password : String) -> Unit {
  url_set_password_ffi(TJsValue::to_js(self), TJsValue::to_js(password))
}

///|
extern "js" fn url_host_ffi(obj : JsValue) -> String = "(obj) => obj.host"

///|
impl TURL with host(self : Self) -> String {
  url_host_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
impl TURL with set_host(self : Self, host : String) -> Unit {
  url_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
extern "js" fn url_hostname_ffi(obj : JsValue) -> String = "(obj) => obj.hostname"

///|
impl TURL with hostname(self : Self) -> String {
  url_hostname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_hostname_ffi(obj : JsValue, hostname : JsValue) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
impl TURL with set_hostname(self : Self, hostname : String) -> Unit {
  url_set_hostname_ffi(TJsValue::to_js(self), TJsValue::to_js(hostname))
}

///|
extern "js" fn url_port_ffi(obj : JsValue) -> String = "(obj) => obj.port"

///|
impl TURL with port(self : Self) -> String {
  url_port_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
impl TURL with set_port(self : Self, port : String) -> Unit {
  url_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
extern "js" fn url_pathname_ffi(obj : JsValue) -> String = "(obj) => obj.pathname"

///|
impl TURL with pathname(self : Self) -> String {
  url_pathname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_pathname_ffi(obj : JsValue, pathname : JsValue) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
impl TURL with set_pathname(self : Self, pathname : String) -> Unit {
  url_set_pathname_ffi(TJsValue::to_js(self), TJsValue::to_js(pathname))
}

///|
extern "js" fn url_search_ffi(obj : JsValue) -> String = "(obj) => obj.search"

///|
impl TURL with search(self : Self) -> String {
  url_search_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

///|
impl TURL with set_search(self : Self, search : String) -> Unit {
  url_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

///|
extern "js" fn url_search_params_ffi(obj : JsValue) -> URLSearchParams = "(obj) => obj.searchParams"

///|
impl TURL with search_params(self : Self) -> URLSearchParams {
  url_search_params_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_hash_ffi(obj : JsValue) -> String = "(obj) => obj.hash"

///|
impl TURL with hash(self : Self) -> String {
  url_hash_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
impl TURL with set_hash(self : Self, hash : String) -> Unit {
  url_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

///|
extern "js" fn url_to_json_ffi(obj : JsValue) -> String = "(obj) => obj.toJSON(obj)"

///|
impl TURL with to_json(self : Self) -> String {
  url_to_json_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn url_create_object_url_ffi(obj : JsValue) -> String = "(obj) => URL.createObjectURL(obj)"

///|
pub fn URL::create_object_url(obj : &TURLCreateObjectURLObj) -> String {
  url_create_object_url_ffi(obj.to_js())
}

///|
extern "js" fn url_revoke_object_url_ffi(url : JsValue) -> Unit = "(url) => URL.revokeObjectURL(url)"

///|
pub fn URL::revoke_object_url(url : String) -> Unit {
  url_revoke_object_url_ffi(TJsValue::to_js(url))
}
