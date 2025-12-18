// Auto-generated MoonBit bindings for HTMLHtmlElement

// Do not edit manually

///|
#external
pub type HTMLHtmlElement

///|
pub trait THTMLHtmlElement: TJsValue + THTMLElement {
  version(self : Self) -> String = _
  set_version(self : Self, value : String) -> Unit = _
}

///|
pub impl TEventTarget for HTMLHtmlElement

///|
pub impl TNode for HTMLHtmlElement

///|
pub impl TElement for HTMLHtmlElement

///|
pub impl THTMLElement for HTMLHtmlElement

///|
pub impl THTMLHtmlElement for HTMLHtmlElement

///|
pub impl TJsValue for HTMLHtmlElement with to_js(self : HTMLHtmlElement) -> JsValue = "%identity"

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
