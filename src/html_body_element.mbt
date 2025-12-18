// Auto-generated MoonBit bindings for HTMLBodyElement interface
// Do not edit manually

#external
pub type HTMLBodyElement

pub impl TJsValue for HTMLBodyElement with to_js(self: HTMLBodyElement) -> JsValue = "%identity"


pub fn[T: THTMLBodyElement] HTMLBodyElement::into(self : HTMLBodyElement) -> T = "%identity"
pub impl THTMLBodyElement for HTMLBodyElement

pub fn HTMLBodyElement::new() -> HTMLBodyElement = "webapi_HTMLBodyElement" "new"

pub trait THTMLBodyElement: TJsValue + TTHTMLElement {
  text(self: Self) -> String = _
  set_text(self: Self, value : String) -> Unit = _
  link(self: Self) -> String = _
  set_link(self: Self, value : String) -> Unit = _
  v_link(self: Self) -> String = _
  set_v_link(self: Self, value : String) -> Unit = _
  a_link(self: Self) -> String = _
  set_a_link(self: Self, value : String) -> Unit = _
  bg_color(self: Self) -> String = _
  set_bg_color(self: Self, value : String) -> Unit = _
  background(self: Self) -> String = _
  set_background(self: Self, value : String) -> Unit = _
}

///|
fn html_body_element_text_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "text"

///|
impl THTMLBodyElement with text(self : Self) -> String {
  html_body_element_text_ffi(self.to_js())
}

///|
fn html_body_element_set_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_text"

///|
impl THTMLBodyElement with set_text(self : Self, value : String) -> Unit {
  html_body_element_set_text_ffi(self.to_js(), value)
}

///|
fn html_body_element_link_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "link"

///|
impl THTMLBodyElement with link(self : Self) -> String {
  html_body_element_link_ffi(self.to_js())
}

///|
fn html_body_element_set_link_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_link"

///|
impl THTMLBodyElement with set_link(self : Self, value : String) -> Unit {
  html_body_element_set_link_ffi(self.to_js(), value)
}

///|
fn html_body_element_v_link_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "vLink"

///|
impl THTMLBodyElement with v_link(self : Self) -> String {
  html_body_element_v_link_ffi(self.to_js())
}

///|
fn html_body_element_set_v_link_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_vLink"

///|
impl THTMLBodyElement with set_v_link(self : Self, value : String) -> Unit {
  html_body_element_set_v_link_ffi(self.to_js(), value)
}

///|
fn html_body_element_a_link_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "aLink"

///|
impl THTMLBodyElement with a_link(self : Self) -> String {
  html_body_element_a_link_ffi(self.to_js())
}

///|
fn html_body_element_set_a_link_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_aLink"

///|
impl THTMLBodyElement with set_a_link(self : Self, value : String) -> Unit {
  html_body_element_set_a_link_ffi(self.to_js(), value)
}

///|
fn html_body_element_bg_color_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "bgColor"

///|
impl THTMLBodyElement with bg_color(self : Self) -> String {
  html_body_element_bg_color_ffi(self.to_js())
}

///|
fn html_body_element_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_bgColor"

///|
impl THTMLBodyElement with set_bg_color(self : Self, value : String) -> Unit {
  html_body_element_set_bg_color_ffi(self.to_js(), value)
}

///|
fn html_body_element_background_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "background"

///|
impl THTMLBodyElement with background(self : Self) -> String {
  html_body_element_background_ffi(self.to_js())
}

///|
fn html_body_element_set_background_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_background"

///|
impl THTMLBodyElement with set_background(self : Self, value : String) -> Unit {
  html_body_element_set_background_ffi(self.to_js(), value)
}