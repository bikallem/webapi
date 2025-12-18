// Auto-generated MoonBit bindings for HTMLDListElement interface
// Do not edit manually

#external
pub type HTMLDListElement

pub impl TJsValue for HTMLDListElement with to_js(self: HTMLDListElement) -> JsValue = "%identity"


pub fn[T: THTMLDListElement] HTMLDListElement::into(self : HTMLDListElement) -> T = "%identity"
pub impl THTMLDListElement for HTMLDListElement

pub fn HTMLDListElement::new() -> HTMLDListElement = "webapi_HTMLDListElement" "new"

pub trait THTMLDListElement: TJsValue + TTHTMLElement {
  compact(self: Self) -> Bool = _
  set_compact(self: Self, value : Bool) -> Unit = _
}

///|
fn htmld_list_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLDListElement" "compact"

///|
impl THTMLDListElement with compact(self : Self) -> Bool {
  htmld_list_element_compact_ffi(self.to_js())
}

///|
fn htmld_list_element_set_compact_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLDListElement" "set_compact"

///|
impl THTMLDListElement with set_compact(self : Self, value : Bool) -> Unit {
  htmld_list_element_set_compact_ffi(self.to_js(), value)
}