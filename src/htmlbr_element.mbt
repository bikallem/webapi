// Auto-generated MoonBit bindings for HTMLBRElement interface
// Do not edit manually

#external
pub type HTMLBRElement

pub impl TJsValue for HTMLBRElement with to_js(self: HTMLBRElement) -> JsValue = "%identity"


pub fn[T: THTMLBRElement] HTMLBRElement::into(self : HTMLBRElement) -> T = "%identity"
pub impl THTMLBRElement for HTMLBRElement

pub fn HTMLBRElement::new() -> HTMLBRElement = "webapi_HTMLBRElement" "new"

pub trait THTMLBRElement: TJsValue + TTHTMLElement {
  clear(self: Self) -> String = _
  set_clear(self: Self, value : String) -> Unit = _
}

///|
fn htmlbr_element_clear_ffi(obj : JsValue) -> String = "webapi_HTMLBRElement" "clear"

///|
impl THTMLBRElement with clear(self : Self) -> String {
  htmlbr_element_clear_ffi(self.to_js())
}

///|
fn htmlbr_element_set_clear_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBRElement" "set_clear"

///|
impl THTMLBRElement with set_clear(self : Self, value : String) -> Unit {
  htmlbr_element_set_clear_ffi(self.to_js(), value)
}