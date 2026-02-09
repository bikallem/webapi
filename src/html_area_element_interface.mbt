// Do not edit. This file is generated.
// MoonBit type: HTMLAreaElement
// Specifications: html.idl

///|
/// [HTMLAreaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement)
#external
pub type HTMLAreaElement

///|
pub impl TJsValue for HTMLAreaElement with to_js(self : HTMLAreaElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLAreaElement] HTMLAreaElement::into(self : HTMLAreaElement) -> T = "%identity"

///|
pub impl THTMLAreaElement for HTMLAreaElement

///|
pub impl THTMLElement for HTMLAreaElement

///|
pub impl TElement for HTMLAreaElement

///|
pub impl TNode for HTMLAreaElement

///|
pub impl TEventTarget for HTMLAreaElement

///|
pub fn HTMLAreaElement::new() -> HTMLAreaElement {
  html_area_element_new_ffi()
}

///|
/// [HTMLAreaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement) interface.
pub trait THTMLAreaElement: THTMLElement {
  alt(self : Self) -> String = _
  set_alt(self : Self, alt : String) -> Unit = _
  coords(self : Self) -> String = _
  set_coords(self : Self, coords : String) -> Unit = _
  shape(self : Self) -> String = _
  set_shape(self : Self, shape : String) -> Unit = _
  target(self : Self) -> String = _
  set_target(self : Self, target : String) -> Unit = _
  download(self : Self) -> String = _
  set_download(self : Self, download : String) -> Unit = _
  ping(self : Self) -> String = _
  set_ping(self : Self, ping : String) -> Unit = _
  rel(self : Self) -> String = _
  set_rel(self : Self, rel : String) -> Unit = _
  rel_list(self : Self) -> DOMTokenList = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, referrer_policy : String) -> Unit = _
  no_href(self : Self) -> Bool = _
  set_no_href(self : Self, no_href : Bool) -> Unit = _
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
/// [HTMLAreaElement.alt](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/alt)
impl THTMLAreaElement with alt(self : Self) -> String {
  html_area_element_alt_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.alt](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/alt)
impl THTMLAreaElement with set_alt(self : Self, alt : String) -> Unit {
  html_area_element_set_alt_ffi(TJsValue::to_js(self), TJsValue::to_js(alt))
}

///|
/// [HTMLAreaElement.coords](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/coords)
impl THTMLAreaElement with coords(self : Self) -> String {
  html_area_element_coords_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.coords](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/coords)
impl THTMLAreaElement with set_coords(self : Self, coords : String) -> Unit {
  html_area_element_set_coords_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(coords),
  )
}

///|
/// [HTMLAreaElement.shape](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/shape)
impl THTMLAreaElement with shape(self : Self) -> String {
  html_area_element_shape_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.shape](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/shape)
impl THTMLAreaElement with set_shape(self : Self, shape : String) -> Unit {
  html_area_element_set_shape_ffi(TJsValue::to_js(self), TJsValue::to_js(shape))
}

///|
/// [HTMLAreaElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/target)
impl THTMLAreaElement with target(self : Self) -> String {
  html_area_element_target_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/target)
impl THTMLAreaElement with set_target(self : Self, target : String) -> Unit {
  html_area_element_set_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
/// [HTMLAreaElement.download](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/download)
impl THTMLAreaElement with download(self : Self) -> String {
  html_area_element_download_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.download](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/download)
impl THTMLAreaElement with set_download(self : Self, download : String) -> Unit {
  html_area_element_set_download_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(download),
  )
}

///|
/// [HTMLAreaElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/ping)
impl THTMLAreaElement with ping(self : Self) -> String {
  html_area_element_ping_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/ping)
impl THTMLAreaElement with set_ping(self : Self, ping : String) -> Unit {
  html_area_element_set_ping_ffi(TJsValue::to_js(self), TJsValue::to_js(ping))
}

///|
/// [HTMLAreaElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/rel)
impl THTMLAreaElement with rel(self : Self) -> String {
  html_area_element_rel_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/rel)
impl THTMLAreaElement with set_rel(self : Self, rel : String) -> Unit {
  html_area_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

///|
/// [HTMLAreaElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/relList)
impl THTMLAreaElement with rel_list(self : Self) -> DOMTokenList {
  html_area_element_rel_list_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/referrerPolicy)
impl THTMLAreaElement with referrer_policy(self : Self) -> String {
  html_area_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/referrerPolicy)
impl THTMLAreaElement with set_referrer_policy(
  self : Self,
  referrer_policy : String,
) -> Unit {
  html_area_element_set_referrer_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(referrer_policy),
  )
}

///|
/// [HTMLAreaElement.noHref](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/noHref)
impl THTMLAreaElement with no_href(self : Self) -> Bool {
  html_area_element_no_href_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.noHref](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/noHref)
impl THTMLAreaElement with set_no_href(self : Self, no_href : Bool) -> Unit {
  html_area_element_set_no_href_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(no_href),
  )
}

///|
/// [HTMLAreaElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/href)
impl THTMLAreaElement with href(self : Self) -> String {
  html_area_element_href_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/href)
impl THTMLAreaElement with set_href(self : Self, href : String) -> Unit {
  html_area_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
/// [HTMLAreaElement.origin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/origin)
impl THTMLAreaElement with origin(self : Self) -> String {
  html_area_element_origin_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/protocol)
impl THTMLAreaElement with protocol(self : Self) -> String {
  html_area_element_protocol_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/protocol)
impl THTMLAreaElement with set_protocol(self : Self, protocol : String) -> Unit {
  html_area_element_set_protocol_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(protocol),
  )
}

///|
/// [HTMLAreaElement.username](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/username)
impl THTMLAreaElement with username(self : Self) -> String {
  html_area_element_username_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.username](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/username)
impl THTMLAreaElement with set_username(self : Self, username : String) -> Unit {
  html_area_element_set_username_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(username),
  )
}

///|
/// [HTMLAreaElement.password](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/password)
impl THTMLAreaElement with password(self : Self) -> String {
  html_area_element_password_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.password](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/password)
impl THTMLAreaElement with set_password(self : Self, password : String) -> Unit {
  html_area_element_set_password_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(password),
  )
}

///|
/// [HTMLAreaElement.host](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/host)
impl THTMLAreaElement with host(self : Self) -> String {
  html_area_element_host_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.host](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/host)
impl THTMLAreaElement with set_host(self : Self, host : String) -> Unit {
  html_area_element_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

///|
/// [HTMLAreaElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/hostname)
impl THTMLAreaElement with hostname(self : Self) -> String {
  html_area_element_hostname_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/hostname)
impl THTMLAreaElement with set_hostname(self : Self, hostname : String) -> Unit {
  html_area_element_set_hostname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hostname),
  )
}

///|
/// [HTMLAreaElement.port](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/port)
impl THTMLAreaElement with port(self : Self) -> String {
  html_area_element_port_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.port](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/port)
impl THTMLAreaElement with set_port(self : Self, port : String) -> Unit {
  html_area_element_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

///|
/// [HTMLAreaElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/pathname)
impl THTMLAreaElement with pathname(self : Self) -> String {
  html_area_element_pathname_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/pathname)
impl THTMLAreaElement with set_pathname(self : Self, pathname : String) -> Unit {
  html_area_element_set_pathname_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pathname),
  )
}

///|
/// [HTMLAreaElement.search](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/search)
impl THTMLAreaElement with search(self : Self) -> String {
  html_area_element_search_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.search](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/search)
impl THTMLAreaElement with set_search(self : Self, search : String) -> Unit {
  html_area_element_set_search_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(search),
  )
}

///|
/// [HTMLAreaElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/hash)
impl THTMLAreaElement with hash(self : Self) -> String {
  html_area_element_hash_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLAreaElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement/hash)
impl THTMLAreaElement with set_hash(self : Self, hash : String) -> Unit {
  html_area_element_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}
