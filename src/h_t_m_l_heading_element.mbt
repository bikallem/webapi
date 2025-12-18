// Auto-generated MoonBit bindings for HTMLHeadingElement interface
// Do not edit manually

#external
pub type HTMLHeadingElement

pub impl TJsValue for HTMLHeadingElement with to_js(self: HTMLHeadingElement) -> JsValue = "%identity"


pub fn[T: THTMLHeadingElement] HTMLHeadingElement::into(self : HTMLHeadingElement) -> T = "%identity"
pub impl THTMLHeadingElement for HTMLHeadingElement

pub fn HTMLHeadingElement::new() -> HTMLHeadingElement = "webapi_HTMLHeadingElement" "new"

pub trait THTMLHeadingElement: TJsValue + TTHTMLElement {
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_heading_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLHeadingElement" "align"

///|
impl THTMLHeadingElement with align(self : Self) -> String {
  h_t_m_l_heading_element_align_ffi(self.to_js())
}

///|
fn h_t_m_l_heading_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLHeadingElement" "set_align"

///|
impl THTMLHeadingElement with set_align(self : Self, value : String) -> Unit {
  h_t_m_l_heading_element_set_align_ffi(self.to_js(), value)
}