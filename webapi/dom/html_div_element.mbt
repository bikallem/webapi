// Auto-generated MoonBit bindings for HTMLDivElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLDivElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLDivElement {
//   [CEReactions, Reflect] attribute DOMString align;
// };

///|
#external
pub type HTMLDivElement

///|
pub trait THTMLDivElement: TJsValue + THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, value : String) -> Unit = _
}

///|
pub impl THTMLElement for HTMLDivElement

///|
pub impl THTMLDivElement for HTMLDivElement

///|
pub impl TJsValue for HTMLDivElement with to_js(self : HTMLDivElement) -> JsValue = "%identity"

///|
pub fn HTMLDivElement::new() -> HTMLDivElement = "webapi_HTMLDivElement" "new"

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