// Auto-generated MoonBit bindings for HTMLLIElement interface
// Do not edit manually

#external
pub type HTMLLIElement

pub impl TJsValue for HTMLLIElement with to_js(self: HTMLLIElement) -> JsValue = "%identity"


pub fn[T: THTMLLIElement] HTMLLIElement::into(self : HTMLLIElement) -> T = "%identity"
pub impl THTMLLIElement for HTMLLIElement

pub fn HTMLLIElement::new() -> HTMLLIElement = "webapi_HTMLLIElement" "new"

pub trait THTMLLIElement: TJsValue + TTHTMLElement {
  value(self: Self) -> Int = _
  set_value(self: Self, value : Int) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
}

///|
fn htmlli_element_value_ffi(obj : JsValue) -> Int = "webapi_HTMLLIElement" "value"

///|
impl THTMLLIElement with value(self : Self) -> Int {
  htmlli_element_value_ffi(self.to_js())
}

///|
fn htmlli_element_set_value_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLLIElement" "set_value"

///|
impl THTMLLIElement with set_value(self : Self, value : Int) -> Unit {
  htmlli_element_set_value_ffi(self.to_js(), value)
}

///|
fn htmlli_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLLIElement" "type"

///|
impl THTMLLIElement with type_(self : Self) -> String {
  htmlli_element_type_ffi(self.to_js())
}

///|
fn htmlli_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLIElement" "set_type"

///|
impl THTMLLIElement with set_type_(self : Self, value : String) -> Unit {
  htmlli_element_set_type_ffi(self.to_js(), value)
}