// Do not edit. This file is generated.
// MoonBit type: URL
// Specifications: FileAPI.idl, url.idl

/// [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL)
#external
pub type URL

pub impl TJsValue for URL with to_js(self: URL) -> JsValue = "%identity"

pub fn[T: TURL] URL::into(self : URL) -> T = "%identity"

pub impl TURL for URL

pub fn URL::new(url : String, 
base? : String) -> URL {
  url_new_ffi(TJsValue::to_js(url), opt_to_js(base))
}

pub(open) trait TURLCreateObjectURLObj {
  to_js(self : Self) -> JsValue
}

pub impl TURLCreateObjectURLObj for Blob with to_js(self : Blob) -> JsValue = "%identity"

pub impl TURLCreateObjectURLObj for MediaSource with to_js(self : MediaSource) -> JsValue = "%identity"

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

/// [URL.parse](https://developer.mozilla.org/en-US/docs/Web/API/URL/parse)
pub fn URL::parse(url : String, 
base? : String) -> URL? {
  let result = url_parse_ffi(TJsValue::to_js(url), opt_to_js(base))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [URL.canParse](https://developer.mozilla.org/en-US/docs/Web/API/URL/canParse)
pub fn URL::can_parse(url : String, 
base? : String) -> Bool {
  url_can_parse_ffi(TJsValue::to_js(url), opt_to_js(base)).unsafe_cast()
}

/// [URL.href](https://developer.mozilla.org/en-US/docs/Web/API/URL/href)
impl TURL with href(self : Self) -> String {
  url_href_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.href](https://developer.mozilla.org/en-US/docs/Web/API/URL/href)
impl TURL with set_href(self : Self, 
href : String) -> Unit {
  url_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

/// [URL.origin](https://developer.mozilla.org/en-US/docs/Web/API/URL/origin)
impl TURL with origin(self : Self) -> String {
  url_origin_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.protocol](https://developer.mozilla.org/en-US/docs/Web/API/URL/protocol)
impl TURL with protocol(self : Self) -> String {
  url_protocol_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.protocol](https://developer.mozilla.org/en-US/docs/Web/API/URL/protocol)
impl TURL with set_protocol(self : Self, 
protocol : String) -> Unit {
  url_set_protocol_ffi(TJsValue::to_js(self), TJsValue::to_js(protocol))
}

/// [URL.username](https://developer.mozilla.org/en-US/docs/Web/API/URL/username)
impl TURL with username(self : Self) -> String {
  url_username_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.username](https://developer.mozilla.org/en-US/docs/Web/API/URL/username)
impl TURL with set_username(self : Self, 
username : String) -> Unit {
  url_set_username_ffi(TJsValue::to_js(self), TJsValue::to_js(username))
}

/// [URL.password](https://developer.mozilla.org/en-US/docs/Web/API/URL/password)
impl TURL with password(self : Self) -> String {
  url_password_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.password](https://developer.mozilla.org/en-US/docs/Web/API/URL/password)
impl TURL with set_password(self : Self, 
password : String) -> Unit {
  url_set_password_ffi(TJsValue::to_js(self), TJsValue::to_js(password))
}

/// [URL.host](https://developer.mozilla.org/en-US/docs/Web/API/URL/host)
impl TURL with host(self : Self) -> String {
  url_host_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.host](https://developer.mozilla.org/en-US/docs/Web/API/URL/host)
impl TURL with set_host(self : Self, 
host : String) -> Unit {
  url_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

/// [URL.hostname](https://developer.mozilla.org/en-US/docs/Web/API/URL/hostname)
impl TURL with hostname(self : Self) -> String {
  url_hostname_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.hostname](https://developer.mozilla.org/en-US/docs/Web/API/URL/hostname)
impl TURL with set_hostname(self : Self, 
hostname : String) -> Unit {
  url_set_hostname_ffi(TJsValue::to_js(self), TJsValue::to_js(hostname))
}

/// [URL.port](https://developer.mozilla.org/en-US/docs/Web/API/URL/port)
impl TURL with port(self : Self) -> String {
  url_port_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.port](https://developer.mozilla.org/en-US/docs/Web/API/URL/port)
impl TURL with set_port(self : Self, 
port : String) -> Unit {
  url_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

/// [URL.pathname](https://developer.mozilla.org/en-US/docs/Web/API/URL/pathname)
impl TURL with pathname(self : Self) -> String {
  url_pathname_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.pathname](https://developer.mozilla.org/en-US/docs/Web/API/URL/pathname)
impl TURL with set_pathname(self : Self, 
pathname : String) -> Unit {
  url_set_pathname_ffi(TJsValue::to_js(self), TJsValue::to_js(pathname))
}

/// [URL.search](https://developer.mozilla.org/en-US/docs/Web/API/URL/search)
impl TURL with search(self : Self) -> String {
  url_search_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.search](https://developer.mozilla.org/en-US/docs/Web/API/URL/search)
impl TURL with set_search(self : Self, 
search : String) -> Unit {
  url_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

/// [URL.searchParams](https://developer.mozilla.org/en-US/docs/Web/API/URL/searchParams)
impl TURL with search_params(self : Self) -> URLSearchParams {
  url_search_params_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.hash](https://developer.mozilla.org/en-US/docs/Web/API/URL/hash)
impl TURL with hash(self : Self) -> String {
  url_hash_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.hash](https://developer.mozilla.org/en-US/docs/Web/API/URL/hash)
impl TURL with set_hash(self : Self, 
hash : String) -> Unit {
  url_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

/// [URL.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/URL/toJSON)
impl TURL with to_json(self : Self) -> String {
  url_to_json_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [URL.createObjectURL](https://developer.mozilla.org/en-US/docs/Web/API/URL/createObjectURL)
pub fn URL::create_object_url(obj : &TURLCreateObjectURLObj) -> String {
  url_create_object_url_ffi(obj.to_js()).unsafe_cast()
}

/// [URL.revokeObjectURL](https://developer.mozilla.org/en-US/docs/Web/API/URL/revokeObjectURL)
pub fn URL::revoke_object_url(url : String) -> Unit {
  url_revoke_object_url_ffi(TJsValue::to_js(url))
}