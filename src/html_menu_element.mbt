// Auto-generated MoonBit bindings for HTMLMenuElement interface
// Do not edit manually

#external
pub type HTMLMenuElement

pub impl TJsValue for HTMLMenuElement with to_js(self: HTMLMenuElement) -> JsValue = "%identity"


pub fn[T: THTMLMenuElement] HTMLMenuElement::into(self : HTMLMenuElement) -> T = "%identity"
pub impl THTMLMenuElement for HTMLMenuElement

pub fn HTMLMenuElement::new() -> HTMLMenuElement = "webapi_HTMLMenuElement" "new"

pub trait THTMLMenuElement: TJsValue + TTHTMLElement {
  compact(self: Self) -> Bool = _
  set_compact(self: Self, value : Bool) -> Unit = _
}

///|
fn html_menu_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLMenuElement" "compact"

///|
impl THTMLMenuElement with compact(self : Self) -> Bool {
  html_menu_element_compact_ffi(self.to_js())
}

///|
fn html_menu_element_set_compact_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMenuElement" "set_compact"

///|
impl THTMLMenuElement with set_compact(self : Self, value : Bool) -> Unit {
  html_menu_element_set_compact_ffi(self.to_js(), value)
}