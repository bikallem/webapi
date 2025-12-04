// Auto-generated MoonBit bindings for HTMLAnchorElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLAnchorElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   [CEReactions, Reflect] attribute DOMString target;
//   [CEReactions, Reflect] attribute DOMString download;
//   [CEReactions, Reflect] attribute USVString ping;
//   [CEReactions, Reflect] attribute DOMString rel;
//   [SameObject, PutForwards=value, Reflect="rel"] readonly attribute DOMTokenList relList;
//   [CEReactions, Reflect] attribute DOMString hreflang;
//   [CEReactions, Reflect] attribute DOMString type;
// 
//   [CEReactions] attribute DOMString text;
// 
//   [CEReactions] attribute DOMString referrerPolicy;
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLAnchorElement {
//   [CEReactions, Reflect] attribute DOMString coords;
//   [CEReactions, Reflect] attribute DOMString charset;
//   [CEReactions, Reflect] attribute DOMString name;
//   [CEReactions, Reflect] attribute DOMString rev;
//   [CEReactions, Reflect] attribute DOMString shape;
// };
// 
// interface mixin HTMLHyperlinkElementUtils {
//   [CEReactions, ReflectSetter] stringifier attribute USVString href;
//   readonly attribute USVString origin;
//   [CEReactions] attribute USVString protocol;
//   [CEReactions] attribute USVString username;
//   [CEReactions] attribute USVString password;
//   [CEReactions] attribute USVString host;
//   [CEReactions] attribute USVString hostname;
//   [CEReactions] attribute USVString port;
//   [CEReactions] attribute USVString pathname;
//   [CEReactions] attribute USVString search;
//   [CEReactions] attribute USVString hash;
// };

///|
#external
pub type HTMLAnchorElement

///|
pub trait THTMLAnchorElement: TJsValue + THTMLElement {
  target(self : Self) -> String = _
  set_target(self : Self, value : String) -> Unit = _
  download(self : Self) -> String = _
  set_download(self : Self, value : String) -> Unit = _
  ping(self : Self) -> String = _
  set_ping(self : Self, value : String) -> Unit = _
  rel(self : Self) -> String = _
  set_rel(self : Self, value : String) -> Unit = _
  rel_list(self : Self) -> DOMTokenList = _
  hreflang(self : Self) -> String = _
  set_hreflang(self : Self, value : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, value : String) -> Unit = _
  text(self : Self) -> String = _
  set_text(self : Self, value : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, value : String) -> Unit = _
  coords(self : Self) -> String = _
  set_coords(self : Self, value : String) -> Unit = _
  charset(self : Self) -> String = _
  set_charset(self : Self, value : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  rev(self : Self) -> String = _
  set_rev(self : Self, value : String) -> Unit = _
  shape(self : Self) -> String = _
  set_shape(self : Self, value : String) -> Unit = _
  href(self : Self) -> String = _
  set_href(self : Self, value : String) -> Unit = _
  origin(self : Self) -> String = _
  protocol(self : Self) -> String = _
  set_protocol(self : Self, value : String) -> Unit = _
  username(self : Self) -> String = _
  set_username(self : Self, value : String) -> Unit = _
  password(self : Self) -> String = _
  set_password(self : Self, value : String) -> Unit = _
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
}

///|
pub impl TEventTarget for HTMLAnchorElement

///|
pub impl TNode for HTMLAnchorElement

///|
pub impl TElement for HTMLAnchorElement

///|
pub impl THTMLElement for HTMLAnchorElement

///|
pub impl THTMLAnchorElement for HTMLAnchorElement

///|
pub impl TJsValue for HTMLAnchorElement with to_js(self : HTMLAnchorElement) -> JsValue = "%identity"

///|
pub fn HTMLAnchorElement::new() -> HTMLAnchorElement = "webapi_HTMLAnchorElement" "new"

///|
fn html_anchor_element_target_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "target"

///|
impl THTMLAnchorElement with target(self : Self) -> String {
  html_anchor_element_target_ffi(self.to_js())
}

///|
fn html_anchor_element_set_target_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_target"

///|
impl THTMLAnchorElement with set_target(self : Self, value : String) -> Unit {
  html_anchor_element_set_target_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_download_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "download"

///|
impl THTMLAnchorElement with download(self : Self) -> String {
  html_anchor_element_download_ffi(self.to_js())
}

///|
fn html_anchor_element_set_download_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_download"

///|
impl THTMLAnchorElement with set_download(self : Self, value : String) -> Unit {
  html_anchor_element_set_download_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_ping_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "ping"

///|
impl THTMLAnchorElement with ping(self : Self) -> String {
  html_anchor_element_ping_ffi(self.to_js())
}

///|
fn html_anchor_element_set_ping_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_ping"

///|
impl THTMLAnchorElement with set_ping(self : Self, value : String) -> Unit {
  html_anchor_element_set_ping_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_rel_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "rel"

///|
impl THTMLAnchorElement with rel(self : Self) -> String {
  html_anchor_element_rel_ffi(self.to_js())
}

///|
fn html_anchor_element_set_rel_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_rel"

///|
impl THTMLAnchorElement with set_rel(self : Self, value : String) -> Unit {
  html_anchor_element_set_rel_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_rel_list_ffi(obj : JsValue) -> JsValue = "webapi_HTMLAnchorElement" "relList"

///|
impl THTMLAnchorElement with rel_list(self : Self) -> DOMTokenList {
  html_anchor_element_rel_list_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_anchor_element_hreflang_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "hreflang"

///|
impl THTMLAnchorElement with hreflang(self : Self) -> String {
  html_anchor_element_hreflang_ffi(self.to_js())
}

///|
fn html_anchor_element_set_hreflang_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_hreflang"

///|
impl THTMLAnchorElement with set_hreflang(self : Self, value : String) -> Unit {
  html_anchor_element_set_hreflang_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "type"

///|
impl THTMLAnchorElement with type_(self : Self) -> String {
  html_anchor_element_type_ffi(self.to_js())
}

///|
fn html_anchor_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_type"

///|
impl THTMLAnchorElement with set_type_(self : Self, value : String) -> Unit {
  html_anchor_element_set_type_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_text_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "text"

///|
impl THTMLAnchorElement with text(self : Self) -> String {
  html_anchor_element_text_ffi(self.to_js())
}

///|
fn html_anchor_element_set_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_text"

///|
impl THTMLAnchorElement with set_text(self : Self, value : String) -> Unit {
  html_anchor_element_set_text_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_referrer_policy_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "referrerPolicy"

///|
impl THTMLAnchorElement with referrer_policy(self : Self) -> String {
  html_anchor_element_referrer_policy_ffi(self.to_js())
}

///|
fn html_anchor_element_set_referrer_policy_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLAnchorElement" "set_referrerPolicy"

///|
impl THTMLAnchorElement with set_referrer_policy(self : Self, value : String) -> Unit {
  html_anchor_element_set_referrer_policy_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_coords_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "coords"

///|
impl THTMLAnchorElement with coords(self : Self) -> String {
  html_anchor_element_coords_ffi(self.to_js())
}

///|
fn html_anchor_element_set_coords_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_coords"

///|
impl THTMLAnchorElement with set_coords(self : Self, value : String) -> Unit {
  html_anchor_element_set_coords_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_charset_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "charset"

///|
impl THTMLAnchorElement with charset(self : Self) -> String {
  html_anchor_element_charset_ffi(self.to_js())
}

///|
fn html_anchor_element_set_charset_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_charset"

///|
impl THTMLAnchorElement with set_charset(self : Self, value : String) -> Unit {
  html_anchor_element_set_charset_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "name"

///|
impl THTMLAnchorElement with name(self : Self) -> String {
  html_anchor_element_name_ffi(self.to_js())
}

///|
fn html_anchor_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_name"

///|
impl THTMLAnchorElement with set_name(self : Self, value : String) -> Unit {
  html_anchor_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_rev_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "rev"

///|
impl THTMLAnchorElement with rev(self : Self) -> String {
  html_anchor_element_rev_ffi(self.to_js())
}

///|
fn html_anchor_element_set_rev_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_rev"

///|
impl THTMLAnchorElement with set_rev(self : Self, value : String) -> Unit {
  html_anchor_element_set_rev_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_shape_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "shape"

///|
impl THTMLAnchorElement with shape(self : Self) -> String {
  html_anchor_element_shape_ffi(self.to_js())
}

///|
fn html_anchor_element_set_shape_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_shape"

///|
impl THTMLAnchorElement with set_shape(self : Self, value : String) -> Unit {
  html_anchor_element_set_shape_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_href_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "href"

///|
impl THTMLAnchorElement with href(self : Self) -> String {
  html_anchor_element_href_ffi(self.to_js())
}

///|
fn html_anchor_element_set_href_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_href"

///|
impl THTMLAnchorElement with set_href(self : Self, value : String) -> Unit {
  html_anchor_element_set_href_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_origin_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "origin"

///|
impl THTMLAnchorElement with origin(self : Self) -> String {
  html_anchor_element_origin_ffi(self.to_js())
}

///|
fn html_anchor_element_protocol_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "protocol"

///|
impl THTMLAnchorElement with protocol(self : Self) -> String {
  html_anchor_element_protocol_ffi(self.to_js())
}

///|
fn html_anchor_element_set_protocol_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_protocol"

///|
impl THTMLAnchorElement with set_protocol(self : Self, value : String) -> Unit {
  html_anchor_element_set_protocol_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_username_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "username"

///|
impl THTMLAnchorElement with username(self : Self) -> String {
  html_anchor_element_username_ffi(self.to_js())
}

///|
fn html_anchor_element_set_username_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_username"

///|
impl THTMLAnchorElement with set_username(self : Self, value : String) -> Unit {
  html_anchor_element_set_username_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_password_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "password"

///|
impl THTMLAnchorElement with password(self : Self) -> String {
  html_anchor_element_password_ffi(self.to_js())
}

///|
fn html_anchor_element_set_password_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_password"

///|
impl THTMLAnchorElement with set_password(self : Self, value : String) -> Unit {
  html_anchor_element_set_password_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_host_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "host"

///|
impl THTMLAnchorElement with host(self : Self) -> String {
  html_anchor_element_host_ffi(self.to_js())
}

///|
fn html_anchor_element_set_host_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_host"

///|
impl THTMLAnchorElement with set_host(self : Self, value : String) -> Unit {
  html_anchor_element_set_host_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_hostname_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "hostname"

///|
impl THTMLAnchorElement with hostname(self : Self) -> String {
  html_anchor_element_hostname_ffi(self.to_js())
}

///|
fn html_anchor_element_set_hostname_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_hostname"

///|
impl THTMLAnchorElement with set_hostname(self : Self, value : String) -> Unit {
  html_anchor_element_set_hostname_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_port_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "port"

///|
impl THTMLAnchorElement with port(self : Self) -> String {
  html_anchor_element_port_ffi(self.to_js())
}

///|
fn html_anchor_element_set_port_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_port"

///|
impl THTMLAnchorElement with set_port(self : Self, value : String) -> Unit {
  html_anchor_element_set_port_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_pathname_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "pathname"

///|
impl THTMLAnchorElement with pathname(self : Self) -> String {
  html_anchor_element_pathname_ffi(self.to_js())
}

///|
fn html_anchor_element_set_pathname_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_pathname"

///|
impl THTMLAnchorElement with set_pathname(self : Self, value : String) -> Unit {
  html_anchor_element_set_pathname_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_search_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "search"

///|
impl THTMLAnchorElement with search(self : Self) -> String {
  html_anchor_element_search_ffi(self.to_js())
}

///|
fn html_anchor_element_set_search_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_search"

///|
impl THTMLAnchorElement with set_search(self : Self, value : String) -> Unit {
  html_anchor_element_set_search_ffi(self.to_js(), value)
}

///|
fn html_anchor_element_hash_ffi(obj : JsValue) -> String = "webapi_HTMLAnchorElement" "hash"

///|
impl THTMLAnchorElement with hash(self : Self) -> String {
  html_anchor_element_hash_ffi(self.to_js())
}

///|
fn html_anchor_element_set_hash_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_hash"

///|
impl THTMLAnchorElement with set_hash(self : Self, value : String) -> Unit {
  html_anchor_element_set_hash_ffi(self.to_js(), value)
}
