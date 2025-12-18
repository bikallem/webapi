// Auto-generated MoonBit bindings for HTMLAreaElement interface
// Do not edit manually

#external
pub type HTMLAreaElement

pub impl TJsValue for HTMLAreaElement with to_js(self: HTMLAreaElement) -> JsValue = "%identity"


pub fn[T: THTMLAreaElement] HTMLAreaElement::into(self : HTMLAreaElement) -> T = "%identity"
pub impl THTMLAreaElement for HTMLAreaElement

pub fn HTMLAreaElement::new() -> HTMLAreaElement = "webapi_HTMLAreaElement" "new"

pub trait THTMLAreaElement: TJsValue + TTHTMLElement {
  alt(self: Self) -> String = _
  set_alt(self: Self, value : String) -> Unit = _
  coords(self: Self) -> String = _
  set_coords(self: Self, value : String) -> Unit = _
  shape(self: Self) -> String = _
  set_shape(self: Self, value : String) -> Unit = _
  target(self: Self) -> String = _
  set_target(self: Self, value : String) -> Unit = _
  download(self: Self) -> String = _
  set_download(self: Self, value : String) -> Unit = _
  ping(self: Self) -> String = _
  set_ping(self: Self, value : String) -> Unit = _
  rel(self: Self) -> String = _
  set_rel(self: Self, value : String) -> Unit = _
  rel_list(self: Self) -> &TDOMTokenList = _
  referrer_policy(self: Self) -> String = _
  set_referrer_policy(self: Self, value : String) -> Unit = _
  no_href(self: Self) -> Bool = _
  set_no_href(self: Self, value : Bool) -> Unit = _
}

///|
fn html_area_element_alt_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "alt"

///|
impl THTMLAreaElement with alt(self : Self) -> String {
  html_area_element_alt_ffi(self.to_js())
}

///|
fn html_area_element_set_alt_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_alt"

///|
impl THTMLAreaElement with set_alt(self : Self, value : String) -> Unit {
  html_area_element_set_alt_ffi(self.to_js(), value)
}

///|
fn html_area_element_coords_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "coords"

///|
impl THTMLAreaElement with coords(self : Self) -> String {
  html_area_element_coords_ffi(self.to_js())
}

///|
fn html_area_element_set_coords_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_coords"

///|
impl THTMLAreaElement with set_coords(self : Self, value : String) -> Unit {
  html_area_element_set_coords_ffi(self.to_js(), value)
}

///|
fn html_area_element_shape_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "shape"

///|
impl THTMLAreaElement with shape(self : Self) -> String {
  html_area_element_shape_ffi(self.to_js())
}

///|
fn html_area_element_set_shape_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_shape"

///|
impl THTMLAreaElement with set_shape(self : Self, value : String) -> Unit {
  html_area_element_set_shape_ffi(self.to_js(), value)
}

///|
fn html_area_element_target_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "target"

///|
impl THTMLAreaElement with target(self : Self) -> String {
  html_area_element_target_ffi(self.to_js())
}

///|
fn html_area_element_set_target_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_target"

///|
impl THTMLAreaElement with set_target(self : Self, value : String) -> Unit {
  html_area_element_set_target_ffi(self.to_js(), value)
}

///|
fn html_area_element_download_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "download"

///|
impl THTMLAreaElement with download(self : Self) -> String {
  html_area_element_download_ffi(self.to_js())
}

///|
fn html_area_element_set_download_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_download"

///|
impl THTMLAreaElement with set_download(self : Self, value : String) -> Unit {
  html_area_element_set_download_ffi(self.to_js(), value)
}

///|
fn html_area_element_ping_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "ping"

///|
impl THTMLAreaElement with ping(self : Self) -> String {
  html_area_element_ping_ffi(self.to_js())
}

///|
fn html_area_element_set_ping_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_ping"

///|
impl THTMLAreaElement with set_ping(self : Self, value : String) -> Unit {
  html_area_element_set_ping_ffi(self.to_js(), value)
}

///|
fn html_area_element_rel_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "rel"

///|
impl THTMLAreaElement with rel(self : Self) -> String {
  html_area_element_rel_ffi(self.to_js())
}

///|
fn html_area_element_set_rel_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_rel"

///|
impl THTMLAreaElement with set_rel(self : Self, value : String) -> Unit {
  html_area_element_set_rel_ffi(self.to_js(), value)
}

///|
fn html_area_element_rel_list_ffi(obj : JsValue) -> JsValue = "webapi_HTMLAreaElement" "relList"

///|
impl THTMLAreaElement with rel_list(self : Self) -> &TDOMTokenList {
  html_area_element_rel_list_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_area_element_referrer_policy_ffi(obj : JsValue) -> String = "webapi_HTMLAreaElement" "referrerPolicy"

///|
impl THTMLAreaElement with referrer_policy(self : Self) -> String {
  html_area_element_referrer_policy_ffi(self.to_js())
}

///|
fn html_area_element_set_referrer_policy_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLAreaElement" "set_referrerPolicy"

///|
impl THTMLAreaElement with set_referrer_policy(self : Self, value : String) -> Unit {
  html_area_element_set_referrer_policy_ffi(self.to_js(), value)
}

///|
fn html_area_element_no_href_ffi(obj : JsValue) -> Bool = "webapi_HTMLAreaElement" "noHref"

///|
impl THTMLAreaElement with no_href(self : Self) -> Bool {
  html_area_element_no_href_ffi(self.to_js())
}

///|
fn html_area_element_set_no_href_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLAreaElement" "set_noHref"

///|
impl THTMLAreaElement with set_no_href(self : Self, value : Bool) -> Unit {
  html_area_element_set_no_href_ffi(self.to_js(), value)
}