// Do not edit. This file is generated.
// MoonBit type: SVGAElement
// Specifications: SVG.idl

///|
/// [SVGAElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement)
#external
pub type SVGAElement

///|
pub impl TJsValue for SVGAElement with to_js(self : SVGAElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGAElement with from_js_any(value : JsAny) -> SVGAElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGAElement] SVGAElement::into(self : SVGAElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGAElement] SVGAElement::unsafe_into(self : SVGAElement) -> T = "%identity"

///|
pub impl HasConstructor for SVGAElement with constructor_name() {
  "SVGAElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAElement + HasConstructor] SVGAElement::try_into(
  self : SVGAElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGAElement for SVGAElement

///|
pub impl TSVGGraphicsElement for SVGAElement

///|
pub impl TSVGElement for SVGAElement

///|
pub impl TElement for SVGAElement

///|
pub impl TNode for SVGAElement

///|
pub impl TEventTarget for SVGAElement

///|
/// [SVGAElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement) interface.
pub trait TSVGAElement: TSVGGraphicsElement {
  target(self : Self) -> SVGAnimatedString = _
  download(self : Self) -> String = _
  set_download(self : Self, download : String) -> Unit = _
  ping(self : Self) -> String = _
  set_ping(self : Self, ping : String) -> Unit = _
  rel(self : Self) -> String = _
  set_rel(self : Self, rel : String) -> Unit = _
  rel_list(self : Self) -> DOMTokenList = _
  hreflang(self : Self) -> String = _
  set_hreflang(self : Self, hreflang : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, referrer_policy : String) -> Unit = _
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
  hash(self : Self) -> String = _
  set_hash(self : Self, hash : String) -> Unit = _
  href(self : Self) -> SVGAnimatedString = _
}

///|
/// [SVGAElement.target](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/target)
impl TSVGAElement with target(self : Self) -> SVGAnimatedString {
  svga_element_target_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.download](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/download)
impl TSVGAElement with download(self : Self) -> String {
  svga_element_download_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.download](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/download)
impl TSVGAElement with set_download(self : Self, download : String) -> Unit {
  svga_element_set_download_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(download),
  )
}

///|
/// [SVGAElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/ping)
impl TSVGAElement with ping(self : Self) -> String {
  svga_element_ping_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/ping)
impl TSVGAElement with set_ping(self : Self, ping : String) -> Unit {
  svga_element_set_ping_ffi(TJsValue::to_js(self), TJsValue::to_js(ping))
}

///|
/// [SVGAElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/rel)
impl TSVGAElement with rel(self : Self) -> String {
  svga_element_rel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/rel)
impl TSVGAElement with set_rel(self : Self, rel : String) -> Unit {
  svga_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

///|
/// [SVGAElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/relList)
impl TSVGAElement with rel_list(self : Self) -> DOMTokenList {
  svga_element_rel_list_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hreflang)
impl TSVGAElement with hreflang(self : Self) -> String {
  svga_element_hreflang_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hreflang)
impl TSVGAElement with set_hreflang(self : Self, hreflang : String) -> Unit {
  svga_element_set_hreflang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hreflang),
  )
}

///|
/// [SVGAElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/type)
impl TSVGAElement with type_(self : Self) -> String {
  svga_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/type)
impl TSVGAElement with set_type_(self : Self, type_ : String) -> Unit {
  svga_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
/// [SVGAElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/referrerPolicy)
impl TSVGAElement with referrer_policy(self : Self) -> String {
  svga_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/referrerPolicy)
impl TSVGAElement with set_referrer_policy(
  self : Self,
  referrer_policy : String,
) -> Unit {
  svga_element_set_referrer_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(referrer_policy),
  )
}

///|
/// [SVGAElement.origin](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/origin)
impl TSVGAElement with origin(self : Self) -> String {
  svga_element_origin_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/protocol)
impl TSVGAElement with protocol(self : Self) -> String {
  svga_element_protocol_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/protocol)
impl TSVGAElement with set_protocol(self : Self, protocol : String) -> Unit {
  svga_element_set_protocol_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(protocol),
  )
}

///|
/// [SVGAElement.username](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/username)
impl TSVGAElement with username(self : Self) -> String {
  svga_element_username_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.username](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/username)
impl TSVGAElement with set_username(self : Self, username : String) -> Unit {
  svga_element_set_username_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(username),
  )
}

///|
/// [SVGAElement.password](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/password)
impl TSVGAElement with password(self : Self) -> String {
  svga_element_password_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.password](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/password)
impl TSVGAElement with set_password(self : Self, password : String) -> Unit {
  svga_element_set_password_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(password),
  )
}

///|
/// [SVGAElement.host](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/host)
impl TSVGAElement with host(self : Self) -> String {
  svga_element_host_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.host](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/host)
impl TSVGAElement with set_host(self : Self, host : String) -> Unit {
  svga_element_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
/// [SVGAElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hostname)
impl TSVGAElement with hostname(self : Self) -> String {
  svga_element_hostname_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hostname)
impl TSVGAElement with set_hostname(self : Self, hostname : String) -> Unit {
  svga_element_set_hostname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hostname),
  )
}

///|
/// [SVGAElement.port](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/port)
impl TSVGAElement with port(self : Self) -> String {
  svga_element_port_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.port](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/port)
impl TSVGAElement with set_port(self : Self, port : String) -> Unit {
  svga_element_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
/// [SVGAElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/pathname)
impl TSVGAElement with pathname(self : Self) -> String {
  svga_element_pathname_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/pathname)
impl TSVGAElement with set_pathname(self : Self, pathname : String) -> Unit {
  svga_element_set_pathname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pathname),
  )
}

///|
/// [SVGAElement.search](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/search)
impl TSVGAElement with search(self : Self) -> String {
  svga_element_search_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.search](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/search)
impl TSVGAElement with set_search(self : Self, search : String) -> Unit {
  svga_element_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

///|
/// [SVGAElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hash)
impl TSVGAElement with hash(self : Self) -> String {
  svga_element_hash_ffi(TJsValue::to_js(self))
}

///|
/// [SVGAElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hash)
impl TSVGAElement with set_hash(self : Self, hash : String) -> Unit {
  svga_element_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

///|
/// [SVGAElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/href)
impl TSVGAElement with href(self : Self) -> SVGAnimatedString {
  svga_element_href_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svga_element_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn svga_element_target_ffi(obj : JsValue) -> SVGAnimatedString {
  svga_element_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_download_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.download"

///|
#cfg(target="js")
fn svga_element_download_ffi(obj : JsValue) -> String {
  svga_element_download_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_download_ffi(
  obj : JsValue,
  download : JsValue,
) -> Unit = "(obj, download) => { obj.download = download; }"

///|
#cfg(target="js")
extern "js" fn svga_element_ping_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ping"

///|
#cfg(target="js")
fn svga_element_ping_ffi(obj : JsValue) -> String {
  svga_element_ping_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_ping_ffi(obj : JsValue, ping : JsValue) -> Unit = "(obj, ping) => { obj.ping = ping; }"

///|
#cfg(target="js")
extern "js" fn svga_element_rel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rel"

///|
#cfg(target="js")
fn svga_element_rel_ffi(obj : JsValue) -> String {
  svga_element_rel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_rel_ffi(obj : JsValue, rel : JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

///|
#cfg(target="js")
extern "js" fn svga_element_rel_list_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.relList"

///|
#cfg(target="js")
fn svga_element_rel_list_ffi(obj : JsValue) -> DOMTokenList {
  svga_element_rel_list_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_hreflang_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hreflang"

///|
#cfg(target="js")
fn svga_element_hreflang_ffi(obj : JsValue) -> String {
  svga_element_hreflang_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_hreflang_ffi(
  obj : JsValue,
  hreflang : JsValue,
) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

///|
#cfg(target="js")
extern "js" fn svga_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn svga_element_type_ffi(obj : JsValue) -> String {
  svga_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
#cfg(target="js")
extern "js" fn svga_element_referrer_policy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
fn svga_element_referrer_policy_ffi(obj : JsValue) -> String {
  svga_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
#cfg(target="js")
extern "js" fn svga_element_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn svga_element_origin_ffi(obj : JsValue) -> String {
  svga_element_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_protocol_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
fn svga_element_protocol_ffi(obj : JsValue) -> String {
  svga_element_protocol_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
#cfg(target="js")
extern "js" fn svga_element_username_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.username"

///|
#cfg(target="js")
fn svga_element_username_ffi(obj : JsValue) -> String {
  svga_element_username_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_username_ffi(
  obj : JsValue,
  username : JsValue,
) -> Unit = "(obj, username) => { obj.username = username; }"

///|
#cfg(target="js")
extern "js" fn svga_element_password_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.password"

///|
#cfg(target="js")
fn svga_element_password_ffi(obj : JsValue) -> String {
  svga_element_password_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_password_ffi(
  obj : JsValue,
  password : JsValue,
) -> Unit = "(obj, password) => { obj.password = password; }"

///|
#cfg(target="js")
extern "js" fn svga_element_host_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.host"

///|
#cfg(target="js")
fn svga_element_host_ffi(obj : JsValue) -> String {
  svga_element_host_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
#cfg(target="js")
extern "js" fn svga_element_hostname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hostname"

///|
#cfg(target="js")
fn svga_element_hostname_ffi(obj : JsValue) -> String {
  svga_element_hostname_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
#cfg(target="js")
extern "js" fn svga_element_port_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
fn svga_element_port_ffi(obj : JsValue) -> String {
  svga_element_port_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
#cfg(target="js")
extern "js" fn svga_element_pathname_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pathname"

///|
#cfg(target="js")
fn svga_element_pathname_ffi(obj : JsValue) -> String {
  svga_element_pathname_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
#cfg(target="js")
extern "js" fn svga_element_search_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.search"

///|
#cfg(target="js")
fn svga_element_search_ffi(obj : JsValue) -> String {
  svga_element_search_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_search_ffi(
  obj : JsValue,
  search : JsValue,
) -> Unit = "(obj, search) => { obj.search = search; }"

///|
#cfg(target="js")
extern "js" fn svga_element_hash_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hash"

///|
#cfg(target="js")
fn svga_element_hash_ffi(obj : JsValue) -> String {
  svga_element_hash_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svga_element_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
#cfg(target="js")
extern "js" fn svga_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn svga_element_href_ffi(obj : JsValue) -> SVGAnimatedString {
  svga_element_href_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svga_element_target_ffi(obj : JsValue) -> SVGAnimatedString = "webapi_SVGAElement" "get_target"

///|
#cfg(target="wasm-gc")
fn svga_element_download_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_download"

///|
#cfg(target="wasm-gc")
fn svga_element_download_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_download_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_download_ffi(obj : JsValue, download : JsValue) -> Unit = "webapi_SVGAElement" "set_download"

///|
#cfg(target="wasm-gc")
fn svga_element_ping_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_ping"

///|
#cfg(target="wasm-gc")
fn svga_element_ping_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_ping_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_ping_ffi(obj : JsValue, ping : JsValue) -> Unit = "webapi_SVGAElement" "set_ping"

///|
#cfg(target="wasm-gc")
fn svga_element_rel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_rel"

///|
#cfg(target="wasm-gc")
fn svga_element_rel_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_rel_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_rel_ffi(obj : JsValue, rel : JsValue) -> Unit = "webapi_SVGAElement" "set_rel"

///|
#cfg(target="wasm-gc")
fn svga_element_rel_list_ffi(obj : JsValue) -> DOMTokenList = "webapi_SVGAElement" "get_relList"

///|
#cfg(target="wasm-gc")
fn svga_element_hreflang_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_hreflang"

///|
#cfg(target="wasm-gc")
fn svga_element_hreflang_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_hreflang_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_hreflang_ffi(obj : JsValue, hreflang : JsValue) -> Unit = "webapi_SVGAElement" "set_hreflang"

///|
#cfg(target="wasm-gc")
fn svga_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_type"

///|
#cfg(target="wasm-gc")
fn svga_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_SVGAElement" "set_type"

///|
#cfg(target="wasm-gc")
fn svga_element_referrer_policy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn svga_element_referrer_policy_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_referrer_policy_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "webapi_SVGAElement" "set_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn svga_element_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_origin"

///|
#cfg(target="wasm-gc")
fn svga_element_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_protocol_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_protocol"

///|
#cfg(target="wasm-gc")
fn svga_element_protocol_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_protocol_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_protocol_ffi(obj : JsValue, protocol : JsValue) -> Unit = "webapi_SVGAElement" "set_protocol"

///|
#cfg(target="wasm-gc")
fn svga_element_username_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_username"

///|
#cfg(target="wasm-gc")
fn svga_element_username_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_username_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_username_ffi(obj : JsValue, username : JsValue) -> Unit = "webapi_SVGAElement" "set_username"

///|
#cfg(target="wasm-gc")
fn svga_element_password_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_password"

///|
#cfg(target="wasm-gc")
fn svga_element_password_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_password_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_password_ffi(obj : JsValue, password : JsValue) -> Unit = "webapi_SVGAElement" "set_password"

///|
#cfg(target="wasm-gc")
fn svga_element_host_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_host"

///|
#cfg(target="wasm-gc")
fn svga_element_host_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_host_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "webapi_SVGAElement" "set_host"

///|
#cfg(target="wasm-gc")
fn svga_element_hostname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_hostname"

///|
#cfg(target="wasm-gc")
fn svga_element_hostname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_hostname_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_hostname_ffi(obj : JsValue, hostname : JsValue) -> Unit = "webapi_SVGAElement" "set_hostname"

///|
#cfg(target="wasm-gc")
fn svga_element_port_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_port"

///|
#cfg(target="wasm-gc")
fn svga_element_port_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_port_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "webapi_SVGAElement" "set_port"

///|
#cfg(target="wasm-gc")
fn svga_element_pathname_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_pathname"

///|
#cfg(target="wasm-gc")
fn svga_element_pathname_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_pathname_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_pathname_ffi(obj : JsValue, pathname : JsValue) -> Unit = "webapi_SVGAElement" "set_pathname"

///|
#cfg(target="wasm-gc")
fn svga_element_search_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_search"

///|
#cfg(target="wasm-gc")
fn svga_element_search_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_search_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_search_ffi(obj : JsValue, search : JsValue) -> Unit = "webapi_SVGAElement" "set_search"

///|
#cfg(target="wasm-gc")
fn svga_element_hash_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAElement" "get_hash"

///|
#cfg(target="wasm-gc")
fn svga_element_hash_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svga_element_hash_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svga_element_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "webapi_SVGAElement" "set_hash"

///|
#cfg(target="wasm-gc")
fn svga_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "webapi_SVGAElement" "get_href"
