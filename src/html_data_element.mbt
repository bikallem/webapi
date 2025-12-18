// Auto-generated MoonBit bindings for HTMLDataElement interface
// Do not edit manually

#external
pub type HTMLDataElement

pub impl TJsValue for HTMLDataElement with to_js(self: HTMLDataElement) -> JsValue = "%identity"


pub fn[T: THTMLDataElement] HTMLDataElement::into(self : HTMLDataElement) -> T = "%identity"
pub impl THTMLDataElement for HTMLDataElement

pub fn HTMLDataElement::new() -> HTMLDataElement = "webapi_HTMLDataElement" "new"

pub trait THTMLDataElement: TJsValue + TTHTMLElement {
  value(self: Self) -> String = _
  set_value(self: Self, value : String) -> Unit = _
}

///|
fn html_data_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLDataElement" "value"

///|
impl THTMLDataElement with value(self : Self) -> String {
  html_data_element_value_ffi(self.to_js())
}

///|
fn html_data_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLDataElement" "set_value"

///|
impl THTMLDataElement with set_value(self : Self, value : String) -> Unit {
  html_data_element_set_value_ffi(self.to_js(), value)
}