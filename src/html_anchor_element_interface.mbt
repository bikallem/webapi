// Do not edit. This file is generated.
// MoonBit type: HTMLAnchorElement
// Specifications: html.idl

///|
/// [HTMLAnchorElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement)
#external
pub type HTMLAnchorElement

///|
pub impl TJsValue for HTMLAnchorElement with to_js(self : HTMLAnchorElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLAnchorElement] HTMLAnchorElement::into(
  self : HTMLAnchorElement,
) -> T = "%identity"

///|
pub impl THTMLAnchorElement for HTMLAnchorElement

///|
pub impl THTMLElement for HTMLAnchorElement

///|
pub impl TElement for HTMLAnchorElement

///|
pub impl TNode for HTMLAnchorElement

///|
pub impl TEventTarget for HTMLAnchorElement

///|
extern "js" fn html_anchor_element_new_ffi() -> HTMLAnchorElement = "() => new HTMLAnchorElement()"

///|
pub fn HTMLAnchorElement::new() -> HTMLAnchorElement {
  html_anchor_element_new_ffi()
}

///|
/// [HTMLAnchorElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement) interface.
pub trait THTMLAnchorElement: THTMLElement {
  target(self : Self) -> String = _
  set_target(self : Self, target : String) -> Unit = _
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
  text(self : Self) -> String = _
  set_text(self : Self, text : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, referrer_policy : String) -> Unit = _
  coords(self : Self) -> String = _
  set_coords(self : Self, coords : String) -> Unit = _
  charset(self : Self) -> String = _
  set_charset(self : Self, charset : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  rev(self : Self) -> String = _
  set_rev(self : Self, rev : String) -> Unit = _
  shape(self : Self) -> String = _
  set_shape(self : Self, shape : String) -> Unit = _
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
  hash(self : Self) -> String = _
  set_hash(self : Self, hash : String) -> Unit = _
}

///|
extern "js" fn html_anchor_element_target_ffi(obj : JsValue) -> String = "(obj) => obj.target"

///|
/// [HTMLAnchorElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/target)
impl THTMLAnchorElement with target(self : Self) -> String {
  html_anchor_element_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
/// [HTMLAnchorElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/target)
impl THTMLAnchorElement with set_target(self : Self, target : String) -> Unit {
  html_anchor_element_set_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
extern "js" fn html_anchor_element_download_ffi(obj : JsValue) -> String = "(obj) => obj.download"

///|
/// [HTMLAnchorElement.download](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/download)
impl THTMLAnchorElement with download(self : Self) -> String {
  html_anchor_element_download_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_download_ffi(
  obj : JsValue,
  download : JsValue,
) -> Unit = "(obj, download) => { obj.download = download; }"

///|
/// [HTMLAnchorElement.download](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/download)
impl THTMLAnchorElement with set_download(self : Self, download : String) -> Unit {
  html_anchor_element_set_download_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(download),
  )
}

///|
extern "js" fn html_anchor_element_ping_ffi(obj : JsValue) -> String = "(obj) => obj.ping"

///|
/// [HTMLAnchorElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/ping)
impl THTMLAnchorElement with ping(self : Self) -> String {
  html_anchor_element_ping_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_ping_ffi(
  obj : JsValue,
  ping : JsValue,
) -> Unit = "(obj, ping) => { obj.ping = ping; }"

///|
/// [HTMLAnchorElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/ping)
impl THTMLAnchorElement with set_ping(self : Self, ping : String) -> Unit {
  html_anchor_element_set_ping_ffi(TJsValue::to_js(self), TJsValue::to_js(ping))
}

///|
extern "js" fn html_anchor_element_rel_ffi(obj : JsValue) -> String = "(obj) => obj.rel"

///|
/// [HTMLAnchorElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rel)
impl THTMLAnchorElement with rel(self : Self) -> String {
  html_anchor_element_rel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_rel_ffi(
  obj : JsValue,
  rel : JsValue,
) -> Unit = "(obj, rel) => { obj.rel = rel; }"

///|
/// [HTMLAnchorElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rel)
impl THTMLAnchorElement with set_rel(self : Self, rel : String) -> Unit {
  html_anchor_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

///|
extern "js" fn html_anchor_element_rel_list_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.relList"

///|
/// [HTMLAnchorElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/relList)
impl THTMLAnchorElement with rel_list(self : Self) -> DOMTokenList {
  html_anchor_element_rel_list_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_hreflang_ffi(obj : JsValue) -> String = "(obj) => obj.hreflang"

///|
/// [HTMLAnchorElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hreflang)
impl THTMLAnchorElement with hreflang(self : Self) -> String {
  html_anchor_element_hreflang_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_hreflang_ffi(
  obj : JsValue,
  hreflang : JsValue,
) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

///|
/// [HTMLAnchorElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hreflang)
impl THTMLAnchorElement with set_hreflang(self : Self, hreflang : String) -> Unit {
  html_anchor_element_set_hreflang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hreflang),
  )
}

///|
extern "js" fn html_anchor_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
/// [HTMLAnchorElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/type)
impl THTMLAnchorElement with type_(self : Self) -> String {
  html_anchor_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
/// [HTMLAnchorElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/type)
impl THTMLAnchorElement with set_type_(self : Self, type_ : String) -> Unit {
  html_anchor_element_set_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
extern "js" fn html_anchor_element_text_ffi(obj : JsValue) -> String = "(obj) => obj.text"

///|
/// [HTMLAnchorElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/text)
impl THTMLAnchorElement with text(self : Self) -> String {
  html_anchor_element_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
/// [HTMLAnchorElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/text)
impl THTMLAnchorElement with set_text(self : Self, text : String) -> Unit {
  html_anchor_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
extern "js" fn html_anchor_element_referrer_policy_ffi(obj : JsValue) -> String = "(obj) => obj.referrerPolicy"

///|
/// [HTMLAnchorElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/referrerPolicy)
impl THTMLAnchorElement with referrer_policy(self : Self) -> String {
  html_anchor_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
/// [HTMLAnchorElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/referrerPolicy)
impl THTMLAnchorElement with set_referrer_policy(
  self : Self,
  referrer_policy : String,
) -> Unit {
  html_anchor_element_set_referrer_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(referrer_policy),
  )
}

///|
extern "js" fn html_anchor_element_coords_ffi(obj : JsValue) -> String = "(obj) => obj.coords"

///|
/// [HTMLAnchorElement.coords](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/coords)
impl THTMLAnchorElement with coords(self : Self) -> String {
  html_anchor_element_coords_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_coords_ffi(
  obj : JsValue,
  coords : JsValue,
) -> Unit = "(obj, coords) => { obj.coords = coords; }"

///|
/// [HTMLAnchorElement.coords](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/coords)
impl THTMLAnchorElement with set_coords(self : Self, coords : String) -> Unit {
  html_anchor_element_set_coords_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(coords),
  )
}

///|
extern "js" fn html_anchor_element_charset_ffi(obj : JsValue) -> String = "(obj) => obj.charset"

///|
/// [HTMLAnchorElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/charset)
impl THTMLAnchorElement with charset(self : Self) -> String {
  html_anchor_element_charset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_charset_ffi(
  obj : JsValue,
  charset : JsValue,
) -> Unit = "(obj, charset) => { obj.charset = charset; }"

///|
/// [HTMLAnchorElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/charset)
impl THTMLAnchorElement with set_charset(self : Self, charset : String) -> Unit {
  html_anchor_element_set_charset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charset),
  )
}

///|
extern "js" fn html_anchor_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
/// [HTMLAnchorElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/name)
impl THTMLAnchorElement with name(self : Self) -> String {
  html_anchor_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
/// [HTMLAnchorElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/name)
impl THTMLAnchorElement with set_name(self : Self, name : String) -> Unit {
  html_anchor_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_anchor_element_rev_ffi(obj : JsValue) -> String = "(obj) => obj.rev"

///|
/// [HTMLAnchorElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rev)
impl THTMLAnchorElement with rev(self : Self) -> String {
  html_anchor_element_rev_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_rev_ffi(
  obj : JsValue,
  rev : JsValue,
) -> Unit = "(obj, rev) => { obj.rev = rev; }"

///|
/// [HTMLAnchorElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rev)
impl THTMLAnchorElement with set_rev(self : Self, rev : String) -> Unit {
  html_anchor_element_set_rev_ffi(TJsValue::to_js(self), TJsValue::to_js(rev))
}

///|
extern "js" fn html_anchor_element_shape_ffi(obj : JsValue) -> String = "(obj) => obj.shape"

///|
/// [HTMLAnchorElement.shape](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/shape)
impl THTMLAnchorElement with shape(self : Self) -> String {
  html_anchor_element_shape_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_shape_ffi(
  obj : JsValue,
  shape : JsValue,
) -> Unit = "(obj, shape) => { obj.shape = shape; }"

///|
/// [HTMLAnchorElement.shape](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/shape)
impl THTMLAnchorElement with set_shape(self : Self, shape : String) -> Unit {
  html_anchor_element_set_shape_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shape),
  )
}

///|
extern "js" fn html_anchor_element_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
/// [HTMLAnchorElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/href)
impl THTMLAnchorElement with href(self : Self) -> String {
  html_anchor_element_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_href_ffi(
  obj : JsValue,
  href : JsValue,
) -> Unit = "(obj, href) => { obj.href = href; }"

///|
/// [HTMLAnchorElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/href)
impl THTMLAnchorElement with set_href(self : Self, href : String) -> Unit {
  html_anchor_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
extern "js" fn html_anchor_element_origin_ffi(obj : JsValue) -> String = "(obj) => obj.origin"

///|
/// [HTMLAnchorElement.origin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/origin)
impl THTMLAnchorElement with origin(self : Self) -> String {
  html_anchor_element_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_protocol_ffi(obj : JsValue) -> String = "(obj) => obj.protocol"

///|
/// [HTMLAnchorElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/protocol)
impl THTMLAnchorElement with protocol(self : Self) -> String {
  html_anchor_element_protocol_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_protocol_ffi(
  obj : JsValue,
  protocol : JsValue,
) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

///|
/// [HTMLAnchorElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/protocol)
impl THTMLAnchorElement with set_protocol(self : Self, protocol : String) -> Unit {
  html_anchor_element_set_protocol_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(protocol),
  )
}

///|
extern "js" fn html_anchor_element_username_ffi(obj : JsValue) -> String = "(obj) => obj.username"

///|
/// [HTMLAnchorElement.username](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/username)
impl THTMLAnchorElement with username(self : Self) -> String {
  html_anchor_element_username_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_username_ffi(
  obj : JsValue,
  username : JsValue,
) -> Unit = "(obj, username) => { obj.username = username; }"

///|
/// [HTMLAnchorElement.username](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/username)
impl THTMLAnchorElement with set_username(self : Self, username : String) -> Unit {
  html_anchor_element_set_username_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(username),
  )
}

///|
extern "js" fn html_anchor_element_password_ffi(obj : JsValue) -> String = "(obj) => obj.password"

///|
/// [HTMLAnchorElement.password](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/password)
impl THTMLAnchorElement with password(self : Self) -> String {
  html_anchor_element_password_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_password_ffi(
  obj : JsValue,
  password : JsValue,
) -> Unit = "(obj, password) => { obj.password = password; }"

///|
/// [HTMLAnchorElement.password](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/password)
impl THTMLAnchorElement with set_password(self : Self, password : String) -> Unit {
  html_anchor_element_set_password_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(password),
  )
}

///|
extern "js" fn html_anchor_element_host_ffi(obj : JsValue) -> String = "(obj) => obj.host"

///|
/// [HTMLAnchorElement.host](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/host)
impl THTMLAnchorElement with host(self : Self) -> String {
  html_anchor_element_host_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_host_ffi(
  obj : JsValue,
  host : JsValue,
) -> Unit = "(obj, host) => { obj.host = host; }"

///|
/// [HTMLAnchorElement.host](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/host)
impl THTMLAnchorElement with set_host(self : Self, host : String) -> Unit {
  html_anchor_element_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
extern "js" fn html_anchor_element_hostname_ffi(obj : JsValue) -> String = "(obj) => obj.hostname"

///|
/// [HTMLAnchorElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hostname)
impl THTMLAnchorElement with hostname(self : Self) -> String {
  html_anchor_element_hostname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_hostname_ffi(
  obj : JsValue,
  hostname : JsValue,
) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

///|
/// [HTMLAnchorElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hostname)
impl THTMLAnchorElement with set_hostname(self : Self, hostname : String) -> Unit {
  html_anchor_element_set_hostname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hostname),
  )
}

///|
extern "js" fn html_anchor_element_port_ffi(obj : JsValue) -> String = "(obj) => obj.port"

///|
/// [HTMLAnchorElement.port](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/port)
impl THTMLAnchorElement with port(self : Self) -> String {
  html_anchor_element_port_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_port_ffi(
  obj : JsValue,
  port : JsValue,
) -> Unit = "(obj, port) => { obj.port = port; }"

///|
/// [HTMLAnchorElement.port](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/port)
impl THTMLAnchorElement with set_port(self : Self, port : String) -> Unit {
  html_anchor_element_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
extern "js" fn html_anchor_element_pathname_ffi(obj : JsValue) -> String = "(obj) => obj.pathname"

///|
/// [HTMLAnchorElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/pathname)
impl THTMLAnchorElement with pathname(self : Self) -> String {
  html_anchor_element_pathname_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_pathname_ffi(
  obj : JsValue,
  pathname : JsValue,
) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

///|
/// [HTMLAnchorElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/pathname)
impl THTMLAnchorElement with set_pathname(self : Self, pathname : String) -> Unit {
  html_anchor_element_set_pathname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pathname),
  )
}

///|
extern "js" fn html_anchor_element_search_ffi(obj : JsValue) -> String = "(obj) => obj.search"

///|
/// [HTMLAnchorElement.search](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/search)
impl THTMLAnchorElement with search(self : Self) -> String {
  html_anchor_element_search_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_search_ffi(
  obj : JsValue,
  search : JsValue,
) -> Unit = "(obj, search) => { obj.search = search; }"

///|
/// [HTMLAnchorElement.search](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/search)
impl THTMLAnchorElement with set_search(self : Self, search : String) -> Unit {
  html_anchor_element_set_search_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(search),
  )
}

///|
extern "js" fn html_anchor_element_hash_ffi(obj : JsValue) -> String = "(obj) => obj.hash"

///|
/// [HTMLAnchorElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hash)
impl THTMLAnchorElement with hash(self : Self) -> String {
  html_anchor_element_hash_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_anchor_element_set_hash_ffi(
  obj : JsValue,
  hash : JsValue,
) -> Unit = "(obj, hash) => { obj.hash = hash; }"

///|
/// [HTMLAnchorElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hash)
impl THTMLAnchorElement with set_hash(self : Self, hash : String) -> Unit {
  html_anchor_element_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}
