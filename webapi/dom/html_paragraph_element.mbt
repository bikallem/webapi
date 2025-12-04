// Auto-generated MoonBit bindings for HTMLParagraphElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLParagraphElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLParagraphElement {
//   [CEReactions, Reflect] attribute DOMString align;
// };

///|
#external
pub type HTMLParagraphElement

///|
pub trait THTMLParagraphElement: TJsValue + THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, value : String) -> Unit = _
}

///|
pub impl THTMLElement for HTMLParagraphElement

///|
pub impl THTMLParagraphElement for HTMLParagraphElement

///|
pub impl TJsValue for HTMLParagraphElement with to_js(
  self : HTMLParagraphElement,
) -> JsValue = "%identity"

///|
pub fn HTMLParagraphElement::new() -> HTMLParagraphElement = "webapi_HTMLParagraphElement" "new"

///|
fn html_paragraph_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLParagraphElement" "align"

///|
impl THTMLParagraphElement with align(self : Self) -> String {
  html_paragraph_element_align_ffi(self.to_js())
}

///|
fn html_paragraph_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLParagraphElement" "set_align"

///|
impl THTMLParagraphElement with set_align(self : Self, value : String) -> Unit {
  html_paragraph_element_set_align_ffi(self.to_js(), value)
}
