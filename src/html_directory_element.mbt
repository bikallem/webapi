// Auto-generated MoonBit bindings for HTMLDirectoryElement interface
// Do not edit manually

#external
pub type HTMLDirectoryElement

pub impl TJsValue for HTMLDirectoryElement with to_js(self: HTMLDirectoryElement) -> JsValue = "%identity"


pub fn[T: THTMLDirectoryElement] HTMLDirectoryElement::into(self : HTMLDirectoryElement) -> T = "%identity"
pub impl THTMLDirectoryElement for HTMLDirectoryElement

pub fn HTMLDirectoryElement::new() -> HTMLDirectoryElement = "webapi_HTMLDirectoryElement" "new"

pub trait THTMLDirectoryElement: TJsValue + TTHTMLElement {
  compact(self: Self) -> Bool = _
  set_compact(self: Self, value : Bool) -> Unit = _
}

///|
fn html_directory_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLDirectoryElement" "compact"

///|
impl THTMLDirectoryElement with compact(self : Self) -> Bool {
  html_directory_element_compact_ffi(self.to_js())
}

///|
fn html_directory_element_set_compact_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLDirectoryElement" "set_compact"

///|
impl THTMLDirectoryElement with set_compact(self : Self, value : Bool) -> Unit {
  html_directory_element_set_compact_ffi(self.to_js(), value)
}