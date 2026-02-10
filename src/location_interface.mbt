// Do not edit. This file is generated.
// MoonBit type: Location
// Specifications: html.idl

///|
/// [Location](https://developer.mozilla.org/en-US/docs/Web/API/Location)
#external
pub type Location

///|
pub impl TJsValue for Location with to_js(self : Location) -> JsValue = "%identity"

///|
pub fn[T : TLocation] Location::into(self : Location) -> T = "%identity"

///|
pub impl TLocation for Location

///|
/// [Location](https://developer.mozilla.org/en-US/docs/Web/API/Location) interface.
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
/// [Location.href](https://developer.mozilla.org/en-US/docs/Web/API/Location/href)
impl TLocation with href(self : Self) -> String {
  location_href_ffi(TJsValue::to_js(self))
}

///|
/// [Location.href](https://developer.mozilla.org/en-US/docs/Web/API/Location/href)
impl TLocation with set_href(self : Self, href : String) -> Unit {
  location_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
/// [Location.origin](https://developer.mozilla.org/en-US/docs/Web/API/Location/origin)
impl TLocation with origin(self : Self) -> String {
  location_origin_ffi(TJsValue::to_js(self))
}

///|
/// [Location.protocol](https://developer.mozilla.org/en-US/docs/Web/API/Location/protocol)
impl TLocation with protocol(self : Self) -> String {
  location_protocol_ffi(TJsValue::to_js(self))
}

///|
/// [Location.protocol](https://developer.mozilla.org/en-US/docs/Web/API/Location/protocol)
impl TLocation with set_protocol(self : Self, protocol : String) -> Unit {
  location_set_protocol_ffi(TJsValue::to_js(self), TJsValue::to_js(protocol))
}

///|
/// [Location.host](https://developer.mozilla.org/en-US/docs/Web/API/Location/host)
impl TLocation with host(self : Self) -> String {
  location_host_ffi(TJsValue::to_js(self))
}

///|
/// [Location.host](https://developer.mozilla.org/en-US/docs/Web/API/Location/host)
impl TLocation with set_host(self : Self, host : String) -> Unit {
  location_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
/// [Location.hostname](https://developer.mozilla.org/en-US/docs/Web/API/Location/hostname)
impl TLocation with hostname(self : Self) -> String {
  location_hostname_ffi(TJsValue::to_js(self))
}

///|
/// [Location.hostname](https://developer.mozilla.org/en-US/docs/Web/API/Location/hostname)
impl TLocation with set_hostname(self : Self, hostname : String) -> Unit {
  location_set_hostname_ffi(TJsValue::to_js(self), TJsValue::to_js(hostname))
}

///|
/// [Location.port](https://developer.mozilla.org/en-US/docs/Web/API/Location/port)
impl TLocation with port(self : Self) -> String {
  location_port_ffi(TJsValue::to_js(self))
}

///|
/// [Location.port](https://developer.mozilla.org/en-US/docs/Web/API/Location/port)
impl TLocation with set_port(self : Self, port : String) -> Unit {
  location_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
/// [Location.pathname](https://developer.mozilla.org/en-US/docs/Web/API/Location/pathname)
impl TLocation with pathname(self : Self) -> String {
  location_pathname_ffi(TJsValue::to_js(self))
}

///|
/// [Location.pathname](https://developer.mozilla.org/en-US/docs/Web/API/Location/pathname)
impl TLocation with set_pathname(self : Self, pathname : String) -> Unit {
  location_set_pathname_ffi(TJsValue::to_js(self), TJsValue::to_js(pathname))
}

///|
/// [Location.search](https://developer.mozilla.org/en-US/docs/Web/API/Location/search)
impl TLocation with search(self : Self) -> String {
  location_search_ffi(TJsValue::to_js(self))
}

///|
/// [Location.search](https://developer.mozilla.org/en-US/docs/Web/API/Location/search)
impl TLocation with set_search(self : Self, search : String) -> Unit {
  location_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

///|
/// [Location.hash](https://developer.mozilla.org/en-US/docs/Web/API/Location/hash)
impl TLocation with hash(self : Self) -> String {
  location_hash_ffi(TJsValue::to_js(self))
}

///|
/// [Location.hash](https://developer.mozilla.org/en-US/docs/Web/API/Location/hash)
impl TLocation with set_hash(self : Self, hash : String) -> Unit {
  location_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

///|
/// [Location.assign](https://developer.mozilla.org/en-US/docs/Web/API/Location/assign)
impl TLocation with assign(self : Self, url : String) -> Unit {
  location_assign_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
/// [Location.replace](https://developer.mozilla.org/en-US/docs/Web/API/Location/replace)
impl TLocation with replace(self : Self, url : String) -> Unit {
  location_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
/// [Location.reload](https://developer.mozilla.org/en-US/docs/Web/API/Location/reload)
impl TLocation with reload(self : Self) -> Unit {
  location_reload_ffi(TJsValue::to_js(self))
}

///|
/// [Location.ancestorOrigins](https://developer.mozilla.org/en-US/docs/Web/API/Location/ancestorOrigins)
impl TLocation with ancestor_origins(self : Self) -> DOMStringList {
  location_ancestor_origins_ffi(TJsValue::to_js(self))
}
