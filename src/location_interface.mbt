// Do not edit. This file is generated.
// MoonBit type: Location
// Specifications: html.idl

///|
#external
pub type Location

///|
pub impl TJsValue for Location with to_js(self : Location) -> JsValue = "%identity"

///|
pub fn[T : TLocation] Location::into(self : Location) -> T = "%identity"

///|
pub impl TLocation for Location

///|
pub trait TLocation: TJsValue {
  href(self : Self) -> String = _
  set_href(self : Self, href : String) -> Unit = _
  origin(self : Self) -> String = _
  protocol(self : Self) -> String = _
  set_protocol(self : Self, protocol : String) -> Unit = _
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
  hash(self : Self) -> String = _
  set_hash(self : Self, hash : String) -> Unit = _
  assign(self : Self, url : String) -> Unit = _
  replace(self : Self, url : String) -> Unit = _
  reload(self : Self) -> Unit = _
  ancestor_origins(self : Self) -> DOMStringList = _
}

///|
extern "js" fn location_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
impl TLocation with href(self : Self) -> String {
  location_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

///|
impl TLocation with set_href(self : Self, href : String) -> Unit {
  location_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
extern "js" fn location_origin_ffi(obj : JsValue) -> String = "(obj) => obj.origin"

///|
impl TLocation with origin(self : Self) -> String {
  location_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_protocol_ffi(obj : JsValue) -> String = "(obj) => obj.protocol"

///|
impl TLocation with protocol(self : Self) -> String {
  location_protocol_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
impl TLocation with set_protocol(self : Self, protocol : String) -> Unit {
  location_set_protocol_ffi(TJsValue::to_js(self), TJsValue::to_js(protocol))
}

///|
extern "js" fn location_host_ffi(obj : JsValue) -> String = "(obj) => obj.host"

///|
impl TLocation with host(self : Self) -> String {
  location_host_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
impl TLocation with set_host(self : Self, host : String) -> Unit {
  location_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
extern "js" fn location_hostname_ffi(obj : JsValue) -> String = "(obj) => obj.hostname"

///|
impl TLocation with hostname(self : Self) -> String {
  location_hostname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
impl TLocation with set_hostname(self : Self, hostname : String) -> Unit {
  location_set_hostname_ffi(TJsValue::to_js(self), TJsValue::to_js(hostname))
}

///|
extern "js" fn location_port_ffi(obj : JsValue) -> String = "(obj) => obj.port"

///|
impl TLocation with port(self : Self) -> String {
  location_port_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
impl TLocation with set_port(self : Self, port : String) -> Unit {
  location_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
extern "js" fn location_pathname_ffi(obj : JsValue) -> String = "(obj) => obj.pathname"

///|
impl TLocation with pathname(self : Self) -> String {
  location_pathname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
impl TLocation with set_pathname(self : Self, pathname : String) -> Unit {
  location_set_pathname_ffi(TJsValue::to_js(self), TJsValue::to_js(pathname))
}

///|
extern "js" fn location_search_ffi(obj : JsValue) -> String = "(obj) => obj.search"

///|
impl TLocation with search(self : Self) -> String {
  location_search_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

///|
impl TLocation with set_search(self : Self, search : String) -> Unit {
  location_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

///|
extern "js" fn location_hash_ffi(obj : JsValue) -> String = "(obj) => obj.hash"

///|
impl TLocation with hash(self : Self) -> String {
  location_hash_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
impl TLocation with set_hash(self : Self, hash : String) -> Unit {
  location_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

///|
extern "js" fn location_assign_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.assign(url)"

///|
impl TLocation with assign(self : Self, url : String) -> Unit {
  location_assign_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
extern "js" fn location_replace_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.replace(url)"

///|
impl TLocation with replace(self : Self, url : String) -> Unit {
  location_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
extern "js" fn location_reload_ffi(obj : JsValue) -> Unit = "(obj) => obj.reload()"

///|
impl TLocation with reload(self : Self) -> Unit {
  location_reload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn location_ancestor_origins_ffi(obj : JsValue) -> DOMStringList = "(obj) => obj.ancestorOrigins"

///|
impl TLocation with ancestor_origins(self : Self) -> DOMStringList {
  location_ancestor_origins_ffi(TJsValue::to_js(self))
}
