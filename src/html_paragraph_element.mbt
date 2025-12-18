// Auto-generated MoonBit bindings for HTMLParagraphElement interface
// Do not edit manually

#external
pub type HTMLParagraphElement

pub impl TJsValue for HTMLParagraphElement with to_js(self: HTMLParagraphElement) -> JsValue = "%identity"


pub fn[T: THTMLParagraphElement] HTMLParagraphElement::into(self : HTMLParagraphElement) -> T = "%identity"
pub impl THTMLParagraphElement for HTMLParagraphElement

pub fn HTMLParagraphElement::new() -> HTMLParagraphElement = "webapi_HTMLParagraphElement" "new"

pub trait THTMLParagraphElement: TJsValue + TTHTMLElement {
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
}

///|
fn html_paragraph_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLParagraphElement" "align"

///|
impl THTMLParagraphElement with align(self : Self) -> String {
  html_paragraph_element_align_ffi(self.to_js())
}

///|
fn html_paragraph_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLParagraphElement" "set_align"

///|
impl THTMLParagraphElement with set_align(self : Self, value : String) -> Unit {
  html_paragraph_element_set_align_ffi(self.to_js(), value)
}