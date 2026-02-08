// Do not edit. This file is generated.
// MoonBit type: SVGAElement
// Specifications: SVG.idl

/// [SVGAElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement)
#external
pub type SVGAElement

pub impl TJsValue for SVGAElement with to_js(self: SVGAElement) -> JsValue = "%identity"

pub fn[T: TSVGAElement] SVGAElement::into(self : SVGAElement) -> T = "%identity"

pub impl TSVGAElement for SVGAElement

pub impl TSVGGraphicsElement for SVGAElement

pub impl TSVGElement for SVGAElement

pub impl TElement for SVGAElement

pub impl TNode for SVGAElement

pub impl TEventTarget for SVGAElement

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

/// [SVGAElement.target](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/target)
impl TSVGAElement with target(self : Self) -> SVGAnimatedString {
  svga_element_target_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.download](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/download)
impl TSVGAElement with download(self : Self) -> String {
  svga_element_download_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.download](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/download)
impl TSVGAElement with set_download(self : Self, 
download : String) -> Unit {
  svga_element_set_download_ffi(TJsValue::to_js(self), TJsValue::to_js(download))
}

/// [SVGAElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/ping)
impl TSVGAElement with ping(self : Self) -> String {
  svga_element_ping_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/ping)
impl TSVGAElement with set_ping(self : Self, 
ping : String) -> Unit {
  svga_element_set_ping_ffi(TJsValue::to_js(self), TJsValue::to_js(ping))
}

/// [SVGAElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/rel)
impl TSVGAElement with rel(self : Self) -> String {
  svga_element_rel_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/rel)
impl TSVGAElement with set_rel(self : Self, 
rel : String) -> Unit {
  svga_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

/// [SVGAElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/relList)
impl TSVGAElement with rel_list(self : Self) -> DOMTokenList {
  svga_element_rel_list_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hreflang)
impl TSVGAElement with hreflang(self : Self) -> String {
  svga_element_hreflang_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hreflang)
impl TSVGAElement with set_hreflang(self : Self, 
hreflang : String) -> Unit {
  svga_element_set_hreflang_ffi(TJsValue::to_js(self), TJsValue::to_js(hreflang))
}

/// [SVGAElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/type)
impl TSVGAElement with type_(self : Self) -> String {
  svga_element_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/type)
impl TSVGAElement with set_type_(self : Self, 
type_ : String) -> Unit {
  svga_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [SVGAElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/referrerPolicy)
impl TSVGAElement with referrer_policy(self : Self) -> String {
  svga_element_referrer_policy_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/referrerPolicy)
impl TSVGAElement with set_referrer_policy(self : Self, 
referrer_policy : String) -> Unit {
  svga_element_set_referrer_policy_ffi(TJsValue::to_js(self), TJsValue::to_js(referrer_policy))
}

/// [SVGAElement.origin](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/origin)
impl TSVGAElement with origin(self : Self) -> String {
  svga_element_origin_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/protocol)
impl TSVGAElement with protocol(self : Self) -> String {
  svga_element_protocol_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/protocol)
impl TSVGAElement with set_protocol(self : Self, 
protocol : String) -> Unit {
  svga_element_set_protocol_ffi(TJsValue::to_js(self), TJsValue::to_js(protocol))
}

/// [SVGAElement.username](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/username)
impl TSVGAElement with username(self : Self) -> String {
  svga_element_username_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.username](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/username)
impl TSVGAElement with set_username(self : Self, 
username : String) -> Unit {
  svga_element_set_username_ffi(TJsValue::to_js(self), TJsValue::to_js(username))
}

/// [SVGAElement.password](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/password)
impl TSVGAElement with password(self : Self) -> String {
  svga_element_password_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.password](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/password)
impl TSVGAElement with set_password(self : Self, 
password : String) -> Unit {
  svga_element_set_password_ffi(TJsValue::to_js(self), TJsValue::to_js(password))
}

/// [SVGAElement.host](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/host)
impl TSVGAElement with host(self : Self) -> String {
  svga_element_host_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.host](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/host)
impl TSVGAElement with set_host(self : Self, 
host : String) -> Unit {
  svga_element_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

/// [SVGAElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hostname)
impl TSVGAElement with hostname(self : Self) -> String {
  svga_element_hostname_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hostname)
impl TSVGAElement with set_hostname(self : Self, 
hostname : String) -> Unit {
  svga_element_set_hostname_ffi(TJsValue::to_js(self), TJsValue::to_js(hostname))
}

/// [SVGAElement.port](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/port)
impl TSVGAElement with port(self : Self) -> String {
  svga_element_port_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.port](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/port)
impl TSVGAElement with set_port(self : Self, 
port : String) -> Unit {
  svga_element_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

/// [SVGAElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/pathname)
impl TSVGAElement with pathname(self : Self) -> String {
  svga_element_pathname_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/pathname)
impl TSVGAElement with set_pathname(self : Self, 
pathname : String) -> Unit {
  svga_element_set_pathname_ffi(TJsValue::to_js(self), TJsValue::to_js(pathname))
}

/// [SVGAElement.search](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/search)
impl TSVGAElement with search(self : Self) -> String {
  svga_element_search_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.search](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/search)
impl TSVGAElement with set_search(self : Self, 
search : String) -> Unit {
  svga_element_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

/// [SVGAElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hash)
impl TSVGAElement with hash(self : Self) -> String {
  svga_element_hash_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGAElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/hash)
impl TSVGAElement with set_hash(self : Self, 
hash : String) -> Unit {
  svga_element_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

/// [SVGAElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement/href)
impl TSVGAElement with href(self : Self) -> SVGAnimatedString {
  svga_element_href_ffi(TJsValue::to_js(self)).unsafe_cast()
}