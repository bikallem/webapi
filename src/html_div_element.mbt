// Auto-generated MoonBit bindings for HTMLDivElement interface
// Do not edit manually

#external
pub type HTMLDivElement

pub impl TJsValue for HTMLDivElement with to_js(self: HTMLDivElement) -> JsValue = "%identity"


pub fn[T: THTMLDivElement] HTMLDivElement::into(self : HTMLDivElement) -> T = "%identity"
pub impl THTMLDivElement for HTMLDivElement

pub fn HTMLDivElement::new() -> HTMLDivElement = "webapi_HTMLDivElement" "new"

pub trait THTMLDivElement: TJsValue + TTHTMLElement {
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
}

///|
fn html_div_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLDivElement" "align"

///|
impl THTMLDivElement with align(self : Self) -> String {
  html_div_element_align_ffi(self.to_js())
}

///|
fn html_div_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLDivElement" "set_align"

///|
impl THTMLDivElement with set_align(self : Self, value : String) -> Unit {
  html_div_element_set_align_ffi(self.to_js(), value)
}