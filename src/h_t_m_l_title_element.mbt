// Auto-generated MoonBit bindings for HTMLTitleElement interface
// Do not edit manually

#external
pub type HTMLTitleElement

pub impl TJsValue for HTMLTitleElement with to_js(self: HTMLTitleElement) -> JsValue = "%identity"


pub fn[T: THTMLTitleElement] HTMLTitleElement::into(self : HTMLTitleElement) -> T = "%identity"
pub impl THTMLTitleElement for HTMLTitleElement

pub fn HTMLTitleElement::new() -> HTMLTitleElement = "webapi_HTMLTitleElement" "new"

pub trait THTMLTitleElement: TJsValue + TTHTMLElement {
  text(self: Self) -> String = _
  set_text(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_title_element_text_ffi(obj : JsValue) -> String = "webapi_HTMLTitleElement" "text"

///|
impl THTMLTitleElement with text(self : Self) -> String {
  h_t_m_l_title_element_text_ffi(self.to_js())
}

///|
fn h_t_m_l_title_element_set_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTitleElement" "set_text"

///|
impl THTMLTitleElement with set_text(self : Self, value : String) -> Unit {
  h_t_m_l_title_element_set_text_ffi(self.to_js(), value)
}