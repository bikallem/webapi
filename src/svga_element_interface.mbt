///|
#external
pub type SVGAElement

///|
pub impl TJsValue for SVGAElement with to_js(self : SVGAElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGAElement] SVGAElement::into(self : SVGAElement) -> T = "%identity"

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
extern "js" fn svga_element_target_ffi(obj : JsValue) -> SVGAnimatedString = "(obj) => obj.target"

///|
impl TSVGAElement with target(self : Self) -> SVGAnimatedString {
  svga_element_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_download_ffi(obj : JsValue) -> String = "(obj) => obj.download"

///|
impl TSVGAElement with download(self : Self) -> String {
  svga_element_download_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_download_ffi(
  obj : JsValue,
  download : JsValue,
) -> Unit = "(obj, download) => { obj.download = download; }"

///|
impl TSVGAElement with set_download(self : Self, download : String) -> Unit {
  svga_element_set_download_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(download),
  )
}

///|
extern "js" fn svga_element_ping_ffi(obj : JsValue) -> String = "(obj) => obj.ping"

///|
impl TSVGAElement with ping(self : Self) -> String {
  svga_element_ping_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_ping_ffi(obj : JsValue, ping : JsValue) -> Unit = "(obj, ping) => { obj.ping = ping; }"

///|
impl TSVGAElement with set_ping(self : Self, ping : String) -> Unit {
  svga_element_set_ping_ffi(TJsValue::to_js(self), TJsValue::to_js(ping))
}

///|
extern "js" fn svga_element_rel_ffi(obj : JsValue) -> String = "(obj) => obj.rel"

///|
impl TSVGAElement with rel(self : Self) -> String {
  svga_element_rel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_rel_ffi(obj : JsValue, rel : JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

///|
impl TSVGAElement with set_rel(self : Self, rel : String) -> Unit {
  svga_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

///|
extern "js" fn svga_element_rel_list_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.relList"

///|
impl TSVGAElement with rel_list(self : Self) -> DOMTokenList {
  svga_element_rel_list_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_hreflang_ffi(obj : JsValue) -> String = "(obj) => obj.hreflang"

///|
impl TSVGAElement with hreflang(self : Self) -> String {
  svga_element_hreflang_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_hreflang_ffi(
  obj : JsValue,
  hreflang : JsValue,
) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

///|
impl TSVGAElement with set_hreflang(self : Self, hreflang : String) -> Unit {
  svga_element_set_hreflang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hreflang),
  )
}

///|
extern "js" fn svga_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl TSVGAElement with type_(self : Self) -> String {
  svga_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
impl TSVGAElement with set_type_(self : Self, type_ : String) -> Unit {
  svga_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn svga_element_referrer_policy_ffi(obj : JsValue) -> String = "(obj) => obj.referrerPolicy"

///|
impl TSVGAElement with referrer_policy(self : Self) -> String {
  svga_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
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
extern "js" fn svga_element_origin_ffi(obj : JsValue) -> String = "(obj) => obj.origin"

///|
impl TSVGAElement with origin(self : Self) -> String {
  svga_element_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_protocol_ffi(obj : JsValue) -> String = "(obj) => obj.protocol"

///|
impl TSVGAElement with protocol(self : Self) -> String {
  svga_element_protocol_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
impl TSVGAElement with set_protocol(self : Self, protocol : String) -> Unit {
  svga_element_set_protocol_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(protocol),
  )
}

///|
extern "js" fn svga_element_username_ffi(obj : JsValue) -> String = "(obj) => obj.username"

///|
impl TSVGAElement with username(self : Self) -> String {
  svga_element_username_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_username_ffi(
  obj : JsValue,
  username : JsValue,
) -> Unit = "(obj, username) => { obj.username = username; }"

///|
impl TSVGAElement with set_username(self : Self, username : String) -> Unit {
  svga_element_set_username_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(username),
  )
}

///|
extern "js" fn svga_element_password_ffi(obj : JsValue) -> String = "(obj) => obj.password"

///|
impl TSVGAElement with password(self : Self) -> String {
  svga_element_password_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_password_ffi(
  obj : JsValue,
  password : JsValue,
) -> Unit = "(obj, password) => { obj.password = password; }"

///|
impl TSVGAElement with set_password(self : Self, password : String) -> Unit {
  svga_element_set_password_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(password),
  )
}

///|
extern "js" fn svga_element_host_ffi(obj : JsValue) -> String = "(obj) => obj.host"

///|
impl TSVGAElement with host(self : Self) -> String {
  svga_element_host_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_host_ffi(obj : JsValue, host : JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

///|
impl TSVGAElement with set_host(self : Self, host : String) -> Unit {
  svga_element_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
extern "js" fn svga_element_hostname_ffi(obj : JsValue) -> String = "(obj) => obj.hostname"

///|
impl TSVGAElement with hostname(self : Self) -> String {
  svga_element_hostname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
impl TSVGAElement with set_hostname(self : Self, hostname : String) -> Unit {
  svga_element_set_hostname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hostname),
  )
}

///|
extern "js" fn svga_element_port_ffi(obj : JsValue) -> String = "(obj) => obj.port"

///|
impl TSVGAElement with port(self : Self) -> String {
  svga_element_port_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_port_ffi(obj : JsValue, port : JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

///|
impl TSVGAElement with set_port(self : Self, port : String) -> Unit {
  svga_element_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
extern "js" fn svga_element_pathname_ffi(obj : JsValue) -> String = "(obj) => obj.pathname"

///|
impl TSVGAElement with pathname(self : Self) -> String {
  svga_element_pathname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
impl TSVGAElement with set_pathname(self : Self, pathname : String) -> Unit {
  svga_element_set_pathname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pathname),
  )
}

///|
extern "js" fn svga_element_search_ffi(obj : JsValue) -> String = "(obj) => obj.search"

///|
impl TSVGAElement with search(self : Self) -> String {
  svga_element_search_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_search_ffi(
  obj : JsValue,
  search : JsValue,
) -> Unit = "(obj, search) => { obj.search = search; }"

///|
impl TSVGAElement with set_search(self : Self, search : String) -> Unit {
  svga_element_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

///|
extern "js" fn svga_element_hash_ffi(obj : JsValue) -> String = "(obj) => obj.hash"

///|
impl TSVGAElement with hash(self : Self) -> String {
  svga_element_hash_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svga_element_set_hash_ffi(obj : JsValue, hash : JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
impl TSVGAElement with set_hash(self : Self, hash : String) -> Unit {
  svga_element_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

///|
extern "js" fn svga_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "(obj) => obj.href"

///|
impl TSVGAElement with href(self : Self) -> SVGAnimatedString {
  svga_element_href_ffi(TJsValue::to_js(self))
}
