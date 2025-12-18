// Auto-generated MoonBit bindings for HTMLDataListElement interface
// Do not edit manually

#external
pub type HTMLDataListElement

pub impl TJsValue for HTMLDataListElement with to_js(self: HTMLDataListElement) -> JsValue = "%identity"


pub fn[T: THTMLDataListElement] HTMLDataListElement::into(self : HTMLDataListElement) -> T = "%identity"
pub impl THTMLDataListElement for HTMLDataListElement

pub fn HTMLDataListElement::new() -> HTMLDataListElement = "webapi_HTMLDataListElement" "new"

pub trait THTMLDataListElement: TJsValue + TTHTMLElement {
  options(self: Self) -> &THTMLCollection = _
}

///|
fn html_data_list_element_options_ffi(obj : JsValue) -> JsValue = "webapi_HTMLDataListElement" "options"

///|
impl THTMLDataListElement with options(self : Self) -> &THTMLCollection {
  html_data_list_element_options_ffi(self.to_js()).unsafe_cast()
}