// Auto-generated MoonBit bindings for HTMLPreElement interface
// Do not edit manually

#external
pub type HTMLPreElement

pub impl TJsValue for HTMLPreElement with to_js(self: HTMLPreElement) -> JsValue = "%identity"


pub fn[T: THTMLPreElement] HTMLPreElement::into(self : HTMLPreElement) -> T = "%identity"
pub impl THTMLPreElement for HTMLPreElement

pub fn HTMLPreElement::new() -> HTMLPreElement = "webapi_HTMLPreElement" "new"

pub trait THTMLPreElement: TJsValue + TTHTMLElement {
  width(self: Self) -> Int = _
  set_width(self: Self, value : Int) -> Unit = _
}

///|
fn html_pre_element_width_ffi(obj : JsValue) -> Int = "webapi_HTMLPreElement" "width"

///|
impl THTMLPreElement with width(self : Self) -> Int {
  html_pre_element_width_ffi(self.to_js())
}

///|
fn html_pre_element_set_width_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLPreElement" "set_width"

///|
impl THTMLPreElement with set_width(self : Self, value : Int) -> Unit {
  html_pre_element_set_width_ffi(self.to_js(), value)
}