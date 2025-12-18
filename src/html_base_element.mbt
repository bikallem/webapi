// Auto-generated MoonBit bindings for HTMLBaseElement interface
// Do not edit manually

#external
pub type HTMLBaseElement

pub impl TJsValue for HTMLBaseElement with to_js(self: HTMLBaseElement) -> JsValue = "%identity"


pub fn[T: THTMLBaseElement] HTMLBaseElement::into(self : HTMLBaseElement) -> T = "%identity"
pub impl THTMLBaseElement for HTMLBaseElement

pub fn HTMLBaseElement::new() -> HTMLBaseElement = "webapi_HTMLBaseElement" "new"

pub trait THTMLBaseElement: TJsValue + TTHTMLElement {
  href(self: Self) -> String = _
  set_href(self: Self, value : String) -> Unit = _
  target(self: Self) -> String = _
  set_target(self: Self, value : String) -> Unit = _
}

///|
fn html_base_element_href_ffi(obj : JsValue) -> String = "webapi_HTMLBaseElement" "href"

///|
impl THTMLBaseElement with href(self : Self) -> String {
  html_base_element_href_ffi(self.to_js())
}

///|
fn html_base_element_set_href_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBaseElement" "set_href"

///|
impl THTMLBaseElement with set_href(self : Self, value : String) -> Unit {
  html_base_element_set_href_ffi(self.to_js(), value)
}

///|
fn html_base_element_target_ffi(obj : JsValue) -> String = "webapi_HTMLBaseElement" "target"

///|
impl THTMLBaseElement with target(self : Self) -> String {
  html_base_element_target_ffi(self.to_js())
}

///|
fn html_base_element_set_target_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBaseElement" "set_target"

///|
impl THTMLBaseElement with set_target(self : Self, value : String) -> Unit {
  html_base_element_set_target_ffi(self.to_js(), value)
}