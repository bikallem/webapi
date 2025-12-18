// Auto-generated MoonBit bindings for HTMLHtmlElement interface
// Do not edit manually

#external
pub type HTMLHtmlElement

pub impl TJsValue for HTMLHtmlElement with to_js(self: HTMLHtmlElement) -> JsValue = "%identity"


pub fn[T: THTMLHtmlElement] HTMLHtmlElement::into(self : HTMLHtmlElement) -> T = "%identity"
pub impl THTMLHtmlElement for HTMLHtmlElement

pub fn HTMLHtmlElement::new() -> HTMLHtmlElement = "webapi_HTMLHtmlElement" "new"

pub trait THTMLHtmlElement: TJsValue + TTHTMLElement {
  version(self: Self) -> String = _
  set_version(self: Self, value : String) -> Unit = _
}

///|
fn html_html_element_version_ffi(obj : JsValue) -> String = "webapi_HTMLHtmlElement" "version"

///|
impl THTMLHtmlElement with version(self : Self) -> String {
  html_html_element_version_ffi(self.to_js())
}

///|
fn html_html_element_set_version_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLHtmlElement" "set_version"

///|
impl THTMLHtmlElement with set_version(self : Self, value : String) -> Unit {
  html_html_element_set_version_ffi(self.to_js(), value)
}