// Do not edit. This file is generated.
// MoonBit type: HTMLAnchorElement
// Specifications: html.idl

/// [HTMLAnchorElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement)
#external
pub type HTMLAnchorElement

pub impl TJsValue for HTMLAnchorElement with to_js(self: HTMLAnchorElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLAnchorElement with from_js_any(value : JsAny) -> HTMLAnchorElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLAnchorElement] HTMLAnchorElement::into(self : HTMLAnchorElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLAnchorElement] HTMLAnchorElement::unsafe_into(self : HTMLAnchorElement) -> T = "%identity"

pub impl HasConstructor for HTMLAnchorElement with constructor_name() { "HTMLAnchorElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLAnchorElement + HasConstructor] HTMLAnchorElement::try_into(self : HTMLAnchorElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLAnchorElement for HTMLAnchorElement

pub impl THTMLElement for HTMLAnchorElement

pub impl TElement for HTMLAnchorElement

pub impl TNode for HTMLAnchorElement

pub impl TEventTarget for HTMLAnchorElement

pub fn HTMLAnchorElement::new() -> HTMLAnchorElement {
  html_anchor_element_new_ffi()
}

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

/// [HTMLAnchorElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/target)
impl THTMLAnchorElement with target(self : Self) -> String {
  html_anchor_element_target_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/target)
impl THTMLAnchorElement with set_target(self : Self, 
target : String) -> Unit {
  html_anchor_element_set_target_ffi(TJsValue::to_js(self), TJsValue::to_js(target))
}

/// [HTMLAnchorElement.download](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/download)
impl THTMLAnchorElement with download(self : Self) -> String {
  html_anchor_element_download_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.download](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/download)
impl THTMLAnchorElement with set_download(self : Self, 
download : String) -> Unit {
  html_anchor_element_set_download_ffi(TJsValue::to_js(self), TJsValue::to_js(download))
}

/// [HTMLAnchorElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/ping)
impl THTMLAnchorElement with ping(self : Self) -> String {
  html_anchor_element_ping_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.ping](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/ping)
impl THTMLAnchorElement with set_ping(self : Self, 
ping : String) -> Unit {
  html_anchor_element_set_ping_ffi(TJsValue::to_js(self), TJsValue::to_js(ping))
}

/// [HTMLAnchorElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rel)
impl THTMLAnchorElement with rel(self : Self) -> String {
  html_anchor_element_rel_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rel)
impl THTMLAnchorElement with set_rel(self : Self, 
rel : String) -> Unit {
  html_anchor_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

/// [HTMLAnchorElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/relList)
impl THTMLAnchorElement with rel_list(self : Self) -> DOMTokenList {
  html_anchor_element_rel_list_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hreflang)
impl THTMLAnchorElement with hreflang(self : Self) -> String {
  html_anchor_element_hreflang_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hreflang)
impl THTMLAnchorElement with set_hreflang(self : Self, 
hreflang : String) -> Unit {
  html_anchor_element_set_hreflang_ffi(TJsValue::to_js(self), TJsValue::to_js(hreflang))
}

/// [HTMLAnchorElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/type)
impl THTMLAnchorElement with type_(self : Self) -> String {
  html_anchor_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/type)
impl THTMLAnchorElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_anchor_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLAnchorElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/text)
impl THTMLAnchorElement with text(self : Self) -> String {
  html_anchor_element_text_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/text)
impl THTMLAnchorElement with set_text(self : Self, 
text : String) -> Unit {
  html_anchor_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

/// [HTMLAnchorElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/referrerPolicy)
impl THTMLAnchorElement with referrer_policy(self : Self) -> String {
  html_anchor_element_referrer_policy_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/referrerPolicy)
impl THTMLAnchorElement with set_referrer_policy(self : Self, 
referrer_policy : String) -> Unit {
  html_anchor_element_set_referrer_policy_ffi(TJsValue::to_js(self), TJsValue::to_js(referrer_policy))
}

/// [HTMLAnchorElement.coords](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/coords)
impl THTMLAnchorElement with coords(self : Self) -> String {
  html_anchor_element_coords_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.coords](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/coords)
impl THTMLAnchorElement with set_coords(self : Self, 
coords : String) -> Unit {
  html_anchor_element_set_coords_ffi(TJsValue::to_js(self), TJsValue::to_js(coords))
}

/// [HTMLAnchorElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/charset)
impl THTMLAnchorElement with charset(self : Self) -> String {
  html_anchor_element_charset_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/charset)
impl THTMLAnchorElement with set_charset(self : Self, 
charset : String) -> Unit {
  html_anchor_element_set_charset_ffi(TJsValue::to_js(self), TJsValue::to_js(charset))
}

/// [HTMLAnchorElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/name)
impl THTMLAnchorElement with name(self : Self) -> String {
  html_anchor_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/name)
impl THTMLAnchorElement with set_name(self : Self, 
name : String) -> Unit {
  html_anchor_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLAnchorElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rev)
impl THTMLAnchorElement with rev(self : Self) -> String {
  html_anchor_element_rev_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/rev)
impl THTMLAnchorElement with set_rev(self : Self, 
rev : String) -> Unit {
  html_anchor_element_set_rev_ffi(TJsValue::to_js(self), TJsValue::to_js(rev))
}

/// [HTMLAnchorElement.shape](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/shape)
impl THTMLAnchorElement with shape(self : Self) -> String {
  html_anchor_element_shape_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.shape](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/shape)
impl THTMLAnchorElement with set_shape(self : Self, 
shape : String) -> Unit {
  html_anchor_element_set_shape_ffi(TJsValue::to_js(self), TJsValue::to_js(shape))
}

/// [HTMLAnchorElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/href)
impl THTMLAnchorElement with href(self : Self) -> String {
  html_anchor_element_href_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/href)
impl THTMLAnchorElement with set_href(self : Self, 
href : String) -> Unit {
  html_anchor_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

/// [HTMLAnchorElement.origin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/origin)
impl THTMLAnchorElement with origin(self : Self) -> String {
  html_anchor_element_origin_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/protocol)
impl THTMLAnchorElement with protocol(self : Self) -> String {
  html_anchor_element_protocol_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.protocol](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/protocol)
impl THTMLAnchorElement with set_protocol(self : Self, 
protocol : String) -> Unit {
  html_anchor_element_set_protocol_ffi(TJsValue::to_js(self), TJsValue::to_js(protocol))
}

/// [HTMLAnchorElement.username](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/username)
impl THTMLAnchorElement with username(self : Self) -> String {
  html_anchor_element_username_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.username](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/username)
impl THTMLAnchorElement with set_username(self : Self, 
username : String) -> Unit {
  html_anchor_element_set_username_ffi(TJsValue::to_js(self), TJsValue::to_js(username))
}

/// [HTMLAnchorElement.password](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/password)
impl THTMLAnchorElement with password(self : Self) -> String {
  html_anchor_element_password_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.password](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/password)
impl THTMLAnchorElement with set_password(self : Self, 
password : String) -> Unit {
  html_anchor_element_set_password_ffi(TJsValue::to_js(self), TJsValue::to_js(password))
}

/// [HTMLAnchorElement.host](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/host)
impl THTMLAnchorElement with host(self : Self) -> String {
  html_anchor_element_host_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.host](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/host)
impl THTMLAnchorElement with set_host(self : Self, 
host : String) -> Unit {
  html_anchor_element_set_host_ffi(TJsValue::to_js(self), TJsValue::to_js(host))
}

/// [HTMLAnchorElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hostname)
impl THTMLAnchorElement with hostname(self : Self) -> String {
  html_anchor_element_hostname_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.hostname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hostname)
impl THTMLAnchorElement with set_hostname(self : Self, 
hostname : String) -> Unit {
  html_anchor_element_set_hostname_ffi(TJsValue::to_js(self), TJsValue::to_js(hostname))
}

/// [HTMLAnchorElement.port](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/port)
impl THTMLAnchorElement with port(self : Self) -> String {
  html_anchor_element_port_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.port](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/port)
impl THTMLAnchorElement with set_port(self : Self, 
port : String) -> Unit {
  html_anchor_element_set_port_ffi(TJsValue::to_js(self), TJsValue::to_js(port))
}

/// [HTMLAnchorElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/pathname)
impl THTMLAnchorElement with pathname(self : Self) -> String {
  html_anchor_element_pathname_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.pathname](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/pathname)
impl THTMLAnchorElement with set_pathname(self : Self, 
pathname : String) -> Unit {
  html_anchor_element_set_pathname_ffi(TJsValue::to_js(self), TJsValue::to_js(pathname))
}

/// [HTMLAnchorElement.search](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/search)
impl THTMLAnchorElement with search(self : Self) -> String {
  html_anchor_element_search_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.search](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/search)
impl THTMLAnchorElement with set_search(self : Self, 
search : String) -> Unit {
  html_anchor_element_set_search_ffi(TJsValue::to_js(self), TJsValue::to_js(search))
}

/// [HTMLAnchorElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hash)
impl THTMLAnchorElement with hash(self : Self) -> String {
  html_anchor_element_hash_ffi(TJsValue::to_js(self))
}

/// [HTMLAnchorElement.hash](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/hash)
impl THTMLAnchorElement with set_hash(self : Self, 
hash : String) -> Unit {
  html_anchor_element_set_hash_ffi(TJsValue::to_js(self), TJsValue::to_js(hash))
}

#cfg(target="js")
extern "js" fn html_anchor_element_new_ffi() -> HTMLAnchorElement = "() => new HTMLAnchorElement()"

#cfg(target="js")
extern "js" fn html_anchor_element_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn html_anchor_element_target_ffi(obj: JsValue) -> String {
  html_anchor_element_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => { obj.target = target; }"

#cfg(target="js")
extern "js" fn html_anchor_element_download_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.download"

///|
#cfg(target="js")
fn html_anchor_element_download_ffi(obj: JsValue) -> String {
  html_anchor_element_download_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_download_ffi(obj: JsValue, download: JsValue) -> Unit = "(obj, download) => { obj.download = download; }"

#cfg(target="js")
extern "js" fn html_anchor_element_ping_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ping"

///|
#cfg(target="js")
fn html_anchor_element_ping_ffi(obj: JsValue) -> String {
  html_anchor_element_ping_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_ping_ffi(obj: JsValue, ping: JsValue) -> Unit = "(obj, ping) => { obj.ping = ping; }"

#cfg(target="js")
extern "js" fn html_anchor_element_rel_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rel"

///|
#cfg(target="js")
fn html_anchor_element_rel_ffi(obj: JsValue) -> String {
  html_anchor_element_rel_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

#cfg(target="js")
extern "js" fn html_anchor_element_rel_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.relList"

///|
#cfg(target="js")
fn html_anchor_element_rel_list_ffi(obj: JsValue) -> DOMTokenList {
  html_anchor_element_rel_list_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_hreflang_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hreflang"

///|
#cfg(target="js")
fn html_anchor_element_hreflang_ffi(obj: JsValue) -> String {
  html_anchor_element_hreflang_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_hreflang_ffi(obj: JsValue, hreflang: JsValue) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

#cfg(target="js")
extern "js" fn html_anchor_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_anchor_element_type_ffi(obj: JsValue) -> String {
  html_anchor_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

#cfg(target="js")
extern "js" fn html_anchor_element_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.text"

///|
#cfg(target="js")
fn html_anchor_element_text_ffi(obj: JsValue) -> String {
  html_anchor_element_text_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "(obj, text) => { obj.text = text; }"

#cfg(target="js")
extern "js" fn html_anchor_element_referrer_policy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
fn html_anchor_element_referrer_policy_ffi(obj: JsValue) -> String {
  html_anchor_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

#cfg(target="js")
extern "js" fn html_anchor_element_coords_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.coords"

///|
#cfg(target="js")
fn html_anchor_element_coords_ffi(obj: JsValue) -> String {
  html_anchor_element_coords_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_coords_ffi(obj: JsValue, coords: JsValue) -> Unit = "(obj, coords) => { obj.coords = coords; }"

#cfg(target="js")
extern "js" fn html_anchor_element_charset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.charset"

///|
#cfg(target="js")
fn html_anchor_element_charset_ffi(obj: JsValue) -> String {
  html_anchor_element_charset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "(obj, charset) => { obj.charset = charset; }"

#cfg(target="js")
extern "js" fn html_anchor_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_anchor_element_name_ffi(obj: JsValue) -> String {
  html_anchor_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="js")
extern "js" fn html_anchor_element_rev_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rev"

///|
#cfg(target="js")
fn html_anchor_element_rev_ffi(obj: JsValue) -> String {
  html_anchor_element_rev_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_rev_ffi(obj: JsValue, rev: JsValue) -> Unit = "(obj, rev) => { obj.rev = rev; }"

#cfg(target="js")
extern "js" fn html_anchor_element_shape_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shape"

///|
#cfg(target="js")
fn html_anchor_element_shape_ffi(obj: JsValue) -> String {
  html_anchor_element_shape_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_shape_ffi(obj: JsValue, shape: JsValue) -> Unit = "(obj, shape) => { obj.shape = shape; }"

#cfg(target="js")
extern "js" fn html_anchor_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn html_anchor_element_href_ffi(obj: JsValue) -> String {
  html_anchor_element_href_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

#cfg(target="js")
extern "js" fn html_anchor_element_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn html_anchor_element_origin_ffi(obj: JsValue) -> String {
  html_anchor_element_origin_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_protocol_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.protocol"

///|
#cfg(target="js")
fn html_anchor_element_protocol_ffi(obj: JsValue) -> String {
  html_anchor_element_protocol_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_protocol_ffi(obj: JsValue, protocol: JsValue) -> Unit = "(obj, protocol) => { obj.protocol = protocol; }"

#cfg(target="js")
extern "js" fn html_anchor_element_username_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.username"

///|
#cfg(target="js")
fn html_anchor_element_username_ffi(obj: JsValue) -> String {
  html_anchor_element_username_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_username_ffi(obj: JsValue, username: JsValue) -> Unit = "(obj, username) => { obj.username = username; }"

#cfg(target="js")
extern "js" fn html_anchor_element_password_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.password"

///|
#cfg(target="js")
fn html_anchor_element_password_ffi(obj: JsValue) -> String {
  html_anchor_element_password_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_password_ffi(obj: JsValue, password: JsValue) -> Unit = "(obj, password) => { obj.password = password; }"

#cfg(target="js")
extern "js" fn html_anchor_element_host_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.host"

///|
#cfg(target="js")
fn html_anchor_element_host_ffi(obj: JsValue) -> String {
  html_anchor_element_host_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_host_ffi(obj: JsValue, host: JsValue) -> Unit = "(obj, host) => { obj.host = host; }"

#cfg(target="js")
extern "js" fn html_anchor_element_hostname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hostname"

///|
#cfg(target="js")
fn html_anchor_element_hostname_ffi(obj: JsValue) -> String {
  html_anchor_element_hostname_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_hostname_ffi(obj: JsValue, hostname: JsValue) -> Unit = "(obj, hostname) => { obj.hostname = hostname; }"

#cfg(target="js")
extern "js" fn html_anchor_element_port_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
fn html_anchor_element_port_ffi(obj: JsValue) -> String {
  html_anchor_element_port_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_port_ffi(obj: JsValue, port: JsValue) -> Unit = "(obj, port) => { obj.port = port; }"

#cfg(target="js")
extern "js" fn html_anchor_element_pathname_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pathname"

///|
#cfg(target="js")
fn html_anchor_element_pathname_ffi(obj: JsValue) -> String {
  html_anchor_element_pathname_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_pathname_ffi(obj: JsValue, pathname: JsValue) -> Unit = "(obj, pathname) => { obj.pathname = pathname; }"

#cfg(target="js")
extern "js" fn html_anchor_element_search_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.search"

///|
#cfg(target="js")
fn html_anchor_element_search_ffi(obj: JsValue) -> String {
  html_anchor_element_search_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_search_ffi(obj: JsValue, search: JsValue) -> Unit = "(obj, search) => { obj.search = search; }"

#cfg(target="js")
extern "js" fn html_anchor_element_hash_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hash"

///|
#cfg(target="js")
fn html_anchor_element_hash_ffi(obj: JsValue) -> String {
  html_anchor_element_hash_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_anchor_element_set_hash_ffi(obj: JsValue, hash: JsValue) -> Unit = "(obj, hash) => { obj.hash = hash; }"

#cfg(target="wasm-gc")
fn html_anchor_element_new_ffi() -> HTMLAnchorElement = "webapi_HTMLAnchorElement" "new"

#cfg(target="wasm-gc")
fn html_anchor_element_target_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_target"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_target_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_target_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_target"

#cfg(target="wasm-gc")
fn html_anchor_element_download_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_download"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_download_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_download_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_download_ffi(obj: JsValue, download: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_download"

#cfg(target="wasm-gc")
fn html_anchor_element_ping_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_ping"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_ping_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_ping_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_ping_ffi(obj: JsValue, ping: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_ping"

#cfg(target="wasm-gc")
fn html_anchor_element_rel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_rel"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_rel_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_rel_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_rel"

#cfg(target="wasm-gc")
fn html_anchor_element_rel_list_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLAnchorElement" "get_relList"

#cfg(target="wasm-gc")
fn html_anchor_element_hreflang_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_hreflang"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_hreflang_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_hreflang_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_hreflang_ffi(obj: JsValue, hreflang: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_hreflang"

#cfg(target="wasm-gc")
fn html_anchor_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_type"

#cfg(target="wasm-gc")
fn html_anchor_element_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_text"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_text_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_text"

#cfg(target="wasm-gc")
fn html_anchor_element_referrer_policy_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_referrer_policy_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_referrer_policy_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_referrerPolicy"

#cfg(target="wasm-gc")
fn html_anchor_element_coords_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_coords"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_coords_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_coords_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_coords_ffi(obj: JsValue, coords: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_coords"

#cfg(target="wasm-gc")
fn html_anchor_element_charset_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_charset"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_charset_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_charset_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_charset"

#cfg(target="wasm-gc")
fn html_anchor_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_name"

#cfg(target="wasm-gc")
fn html_anchor_element_rev_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_rev"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_rev_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_rev_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_rev_ffi(obj: JsValue, rev: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_rev"

#cfg(target="wasm-gc")
fn html_anchor_element_shape_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_shape"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_shape_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_shape_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_shape_ffi(obj: JsValue, shape: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_shape"

#cfg(target="wasm-gc")
fn html_anchor_element_href_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_href"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_href_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_href_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_href"

#cfg(target="wasm-gc")
fn html_anchor_element_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_origin"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_origin_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_protocol_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_protocol"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_protocol_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_protocol_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_protocol_ffi(obj: JsValue, protocol: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_protocol"

#cfg(target="wasm-gc")
fn html_anchor_element_username_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_username"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_username_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_username_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_username_ffi(obj: JsValue, username: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_username"

#cfg(target="wasm-gc")
fn html_anchor_element_password_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_password"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_password_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_password_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_password_ffi(obj: JsValue, password: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_password"

#cfg(target="wasm-gc")
fn html_anchor_element_host_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_host"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_host_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_host_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_host_ffi(obj: JsValue, host: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_host"

#cfg(target="wasm-gc")
fn html_anchor_element_hostname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_hostname"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_hostname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_hostname_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_hostname_ffi(obj: JsValue, hostname: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_hostname"

#cfg(target="wasm-gc")
fn html_anchor_element_port_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_port"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_port_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_port_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_port_ffi(obj: JsValue, port: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_port"

#cfg(target="wasm-gc")
fn html_anchor_element_pathname_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_pathname"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_pathname_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_pathname_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_pathname_ffi(obj: JsValue, pathname: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_pathname"

#cfg(target="wasm-gc")
fn html_anchor_element_search_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_search"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_search_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_search_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_search_ffi(obj: JsValue, search: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_search"

#cfg(target="wasm-gc")
fn html_anchor_element_hash_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLAnchorElement" "get_hash"

///|
#cfg(target="wasm-gc")
fn html_anchor_element_hash_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_anchor_element_hash_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_anchor_element_set_hash_ffi(obj: JsValue, hash: JsValue) -> Unit = "webapi_HTMLAnchorElement" "set_hash"