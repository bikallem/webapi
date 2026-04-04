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
pub impl FromJsAny for Location with from_js_any(value : JsAny) -> Location = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TLocation] Location::into(self : Location) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TLocation] Location::unsafe_into(self : Location) -> T = "%identity"

///|
pub impl HasConstructor for Location with constructor_name() {
  "Location"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TLocation + HasConstructor] Location::try_into(
  self : Location,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn location_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn location_href_ffi(obj : JsValue) -> String {
  location_href_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

///|
#cfg(target="js")
extern "js" fn location_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn location_origin_ffi(obj : JsValue) -> String {
  location_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_protocol_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
fn location_protocol_ffi(obj : JsValue) -> String {
  location_protocol_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
#cfg(target="js")
extern "js" fn location_host_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
#cfg(target="js")
fn location_host_ffi(obj : JsValue) -> String {
  location_host_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
#cfg(target="js")
extern "js" fn location_hostname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
#cfg(target="js")
fn location_hostname_ffi(obj : JsValue) -> String {
  location_hostname_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
#cfg(target="js")
extern "js" fn location_port_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
fn location_port_ffi(obj : JsValue) -> String {
  location_port_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
#cfg(target="js")
extern "js" fn location_pathname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
#cfg(target="js")
fn location_pathname_ffi(obj : JsValue) -> String {
  location_pathname_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
#cfg(target="js")
extern "js" fn location_search_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
#cfg(target="js")
fn location_search_ffi(obj : JsValue) -> String {
  location_search_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

///|
#cfg(target="js")
extern "js" fn location_hash_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
#cfg(target="js")
fn location_hash_ffi(obj : JsValue) -> String {
  location_hash_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn location_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
#cfg(target="js")
extern "js" fn location_assign_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.assign(url)"

///|
#cfg(target="js")
extern "js" fn location_replace_ffi(obj : JsValue, url : JsValue) -> Unit = "(obj, url) => obj.replace(url)"

///|
#cfg(target="js")
extern "js" fn location_reload_ffi(obj : JsValue) -> Unit = "(obj) => obj.reload()"

///|
#cfg(target="js")
extern "js" fn location_ancestor_origins_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ancestorOrigins"

///|
#cfg(target="js")
fn location_ancestor_origins_ffi(obj : JsValue) -> DOMStringList {
  location_ancestor_origins_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn location_href_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_href"

///|
#cfg(target="wasm-gc")
fn location_href_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_href_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "webapi_Location" "set_href"

///|
#cfg(target="wasm-gc")
fn location_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_origin"

///|
#cfg(target="wasm-gc")
fn location_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_protocol_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_protocol"

///|
#cfg(target="wasm-gc")
fn location_protocol_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_protocol_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_protocol_ffi(obj : JsValue, protocol : JsValue) -> Unit = "webapi_Location" "set_protocol"

///|
#cfg(target="wasm-gc")
fn location_host_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_host"

///|
#cfg(target="wasm-gc")
fn location_host_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_host_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "webapi_Location" "set_host"

///|
#cfg(target="wasm-gc")
fn location_hostname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_hostname"

///|
#cfg(target="wasm-gc")
fn location_hostname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_hostname_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_hostname_ffi(obj : JsValue, hostname : JsValue) -> Unit = "webapi_Location" "set_hostname"

///|
#cfg(target="wasm-gc")
fn location_port_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_port"

///|
#cfg(target="wasm-gc")
fn location_port_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_port_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "webapi_Location" "set_port"

///|
#cfg(target="wasm-gc")
fn location_pathname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_pathname"

///|
#cfg(target="wasm-gc")
fn location_pathname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_pathname_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_pathname_ffi(obj : JsValue, pathname : JsValue) -> Unit = "webapi_Location" "set_pathname"

///|
#cfg(target="wasm-gc")
fn location_search_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_search"

///|
#cfg(target="wasm-gc")
fn location_search_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_search_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "webapi_Location" "set_search"

///|
#cfg(target="wasm-gc")
fn location_hash_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Location" "get_hash"

///|
#cfg(target="wasm-gc")
fn location_hash_ffi(obj : JsValue) -> String {
  jsvalue_to_string(location_hash_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn location_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "webapi_Location" "set_hash"

///|
#cfg(target="wasm-gc")
fn location_assign_ffi(obj : JsValue, url : JsValue) -> Unit = "webapi_Location" "assign"

///|
#cfg(target="wasm-gc")
fn location_replace_ffi(obj : JsValue, url : JsValue) -> Unit = "webapi_Location" "replace"

///|
#cfg(target="wasm-gc")
fn location_reload_ffi(obj : JsValue) -> Unit = "webapi_Location" "reload"

///|
#cfg(target="wasm-gc")
fn location_ancestor_origins_ffi(obj : JsValue) -> DOMStringList = "webapi_Location" "get_ancestorOrigins"
