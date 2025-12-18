// Auto-generated MoonBit bindings for HTMLTableCaptionElement interface
// Do not edit manually

#external
pub type HTMLTableCaptionElement

pub impl TJsValue for HTMLTableCaptionElement with to_js(self: HTMLTableCaptionElement) -> JsValue = "%identity"


pub fn[T: THTMLTableCaptionElement] HTMLTableCaptionElement::into(self : HTMLTableCaptionElement) -> T = "%identity"
pub impl THTMLTableCaptionElement for HTMLTableCaptionElement

pub fn HTMLTableCaptionElement::new() -> HTMLTableCaptionElement = "webapi_HTMLTableCaptionElement" "new"

pub trait THTMLTableCaptionElement: TJsValue + TTHTMLElement {
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_table_caption_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableCaptionElement" "align"

///|
impl THTMLTableCaptionElement with align(self : Self) -> String {
  h_t_m_l_table_caption_element_align_ffi(self.to_js())
}

///|
fn h_t_m_l_table_caption_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCaptionElement" "set_align"

///|
impl THTMLTableCaptionElement with set_align(self : Self, value : String) -> Unit {
  h_t_m_l_table_caption_element_set_align_ffi(self.to_js(), value)
}