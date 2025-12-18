// Auto-generated MoonBit bindings for HTMLAnchorElement interface
// Do not edit manually

#external
pub type HTMLAnchorElement

pub impl TJsValue for HTMLAnchorElement with to_js(self: HTMLAnchorElement) -> JsValue = "%identity"


pub fn[T: THTMLAnchorElement] HTMLAnchorElement::into(self : HTMLAnchorElement) -> T = "%identity"
pub impl THTMLAnchorElement for HTMLAnchorElement

pub fn HTMLAnchorElement::new() -> HTMLAnchorElement = "webapi_HTMLAnchorElement" "new"

pub trait THTMLAnchorElement: TJsValue + TTHTMLElement {
  target(self: Self) -> String = _
  set_target(self: Self, value : String) -> Unit = _
  download(self: Self) -> String = _
  set_download(self: Self, value : String) -> Unit = _
  ping(self: Self) -> String = _
  set_ping(self: Self, value : String) -> Unit = _
  rel(self: Self) -> String = _
  set_rel(self: Self, value : String) -> Unit = _
  rel_list(self: Self) -> &TDOMTokenList = _
  hreflang(self: Self) -> String = _
  set_hreflang(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
  text(self: Self) -> String = _
  set_text(self: Self, value : String) -> Unit = _
  referrer_policy(self: Self) -> String = _
  set_referrer_policy(self: Self, value : String) -> Unit = _
  coords(self: Self) -> String = _
  set_coords(self: Self, value : String) -> Unit = _
  charset(self: Self) -> String = _
  set_charset(self: Self, value : String) -> Unit = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  rev(self: Self) -> String = _
  set_rev(self: Self, value : String) -> Unit = _
  shape(self: Self) -> String = _
  set_shape(self: Self, value : String) -> Unit = _
}

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
impl THTMLAnchorElement with rel_list(self : Self) -> &TDOMTokenList {
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
fn html_anchor_element_set_referrer_policy_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAnchorElement" "set_referrerPolicy"

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