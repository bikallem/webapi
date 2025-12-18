// Auto-generated MoonBit bindings for Location

// Do not edit manually

///|
#external
pub type Location

///|
pub trait TLocation: TJsValue {
  href(self : Self) -> String = _
  set_href(self : Self, value : String) -> Unit = _
  origin(self : Self) -> String = _
  protocol(self : Self) -> String = _
  set_protocol(self : Self, value : String) -> Unit = _
  host(self : Self) -> String = _
  set_host(self : Self, value : String) -> Unit = _
  hostname(self : Self) -> String = _
  set_hostname(self : Self, value : String) -> Unit = _
  port(self : Self) -> String = _
  set_port(self : Self, value : String) -> Unit = _
  pathname(self : Self) -> String = _
  set_pathname(self : Self, value : String) -> Unit = _
  search(self : Self) -> String = _
  set_search(self : Self, value : String) -> Unit = _
  hash(self : Self) -> String = _
  set_hash(self : Self, value : String) -> Unit = _
  ancestor_origins(self : Self) -> JsValue = _
  assign(self : Self, url : String) -> Unit = _
  replace(self : Self, url : String) -> Unit = _
  reload(self : Self) -> Unit = _
}

///|
pub impl TLocation for Location

///|
pub impl TJsValue for Location with to_js(self : Location) -> JsValue = "%identity"

///|
fn location_assign_ffi(obj : JsValue, url : JsValue) -> Unit = "webapi_Location" "assign"

///|
impl TLocation with assign(self : Self, url : String) -> Unit {
  location_assign_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
fn location_replace_ffi(obj : JsValue, url : JsValue) -> Unit = "webapi_Location" "replace"

///|
impl TLocation with replace(self : Self, url : String) -> Unit {
  location_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
fn location_reload_ffi(obj : JsValue) -> Unit = "webapi_Location" "reload"

///|
impl TLocation with reload(self : Self) -> Unit {
  location_reload_ffi(TJsValue::to_js(self))
}

///|
fn location_href_ffi(obj : JsValue) -> String = "webapi_Location" "href"

///|
impl TLocation with href(self : Self) -> String {
  location_href_ffi(self.to_js())
}

///|
fn location_set_href_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_href"

///|
impl TLocation with set_href(self : Self, value : String) -> Unit {
  location_set_href_ffi(self.to_js(), value)
}

///|
fn location_origin_ffi(obj : JsValue) -> String = "webapi_Location" "origin"

///|
impl TLocation with origin(self : Self) -> String {
  location_origin_ffi(self.to_js())
}

///|
fn location_protocol_ffi(obj : JsValue) -> String = "webapi_Location" "protocol"

///|
impl TLocation with protocol(self : Self) -> String {
  location_protocol_ffi(self.to_js())
}

///|
fn location_set_protocol_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_protocol"

///|
impl TLocation with set_protocol(self : Self, value : String) -> Unit {
  location_set_protocol_ffi(self.to_js(), value)
}

///|
fn location_host_ffi(obj : JsValue) -> String = "webapi_Location" "host"

///|
impl TLocation with host(self : Self) -> String {
  location_host_ffi(self.to_js())
}

///|
fn location_set_host_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_host"

///|
impl TLocation with set_host(self : Self, value : String) -> Unit {
  location_set_host_ffi(self.to_js(), value)
}

///|
fn location_hostname_ffi(obj : JsValue) -> String = "webapi_Location" "hostname"

///|
impl TLocation with hostname(self : Self) -> String {
  location_hostname_ffi(self.to_js())
}

///|
fn location_set_hostname_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_hostname"

///|
impl TLocation with set_hostname(self : Self, value : String) -> Unit {
  location_set_hostname_ffi(self.to_js(), value)
}

///|
fn location_port_ffi(obj : JsValue) -> String = "webapi_Location" "port"

///|
impl TLocation with port(self : Self) -> String {
  location_port_ffi(self.to_js())
}

///|
fn location_set_port_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_port"

///|
impl TLocation with set_port(self : Self, value : String) -> Unit {
  location_set_port_ffi(self.to_js(), value)
}

///|
fn location_pathname_ffi(obj : JsValue) -> String = "webapi_Location" "pathname"

///|
impl TLocation with pathname(self : Self) -> String {
  location_pathname_ffi(self.to_js())
}

///|
fn location_set_pathname_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_pathname"

///|
impl TLocation with set_pathname(self : Self, value : String) -> Unit {
  location_set_pathname_ffi(self.to_js(), value)
}

///|
fn location_search_ffi(obj : JsValue) -> String = "webapi_Location" "search"

///|
impl TLocation with search(self : Self) -> String {
  location_search_ffi(self.to_js())
}

///|
fn location_set_search_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_search"

///|
impl TLocation with set_search(self : Self, value : String) -> Unit {
  location_set_search_ffi(self.to_js(), value)
}

///|
fn location_hash_ffi(obj : JsValue) -> String = "webapi_Location" "hash"

///|
impl TLocation with hash(self : Self) -> String {
  location_hash_ffi(self.to_js())
}

///|
fn location_set_hash_ffi(obj : JsValue, value : String) -> Unit = "webapi_Location" "set_hash"

///|
impl TLocation with set_hash(self : Self, value : String) -> Unit {
  location_set_hash_ffi(self.to_js(), value)
}

///|
fn location_ancestor_origins_ffi(obj : JsValue) -> JsValue = "webapi_Location" "ancestorOrigins"

///|
impl TLocation with ancestor_origins(self : Self) -> JsValue {
  location_ancestor_origins_ffi(self.to_js())
}
