// Do not edit. This file is generated.
// MoonBit type: HTMLDirectoryElement
// Specifications: html.idl

///|
/// [HTMLDirectoryElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement)
#external
pub type HTMLDirectoryElement

///|
pub impl TJsValue for HTMLDirectoryElement with to_js(
  self : HTMLDirectoryElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLDirectoryElement] HTMLDirectoryElement::into(
  self : HTMLDirectoryElement,
) -> T = "%identity"

///|
pub impl THTMLDirectoryElement for HTMLDirectoryElement

///|
pub impl THTMLElement for HTMLDirectoryElement

///|
pub impl TElement for HTMLDirectoryElement

///|
pub impl TNode for HTMLDirectoryElement

///|
pub impl TEventTarget for HTMLDirectoryElement

///|
pub fn HTMLDirectoryElement::new() -> HTMLDirectoryElement {
  html_directory_element_new_ffi()
}

///|
/// [HTMLDirectoryElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement) interface.
pub trait THTMLDirectoryElement: THTMLElement {
  compact(self : Self) -> Bool = _
  set_compact(self : Self, compact : Bool) -> Unit = _
}

///|
/// [HTMLDirectoryElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement/compact)
impl THTMLDirectoryElement with compact(self : Self) -> Bool {
  html_directory_element_compact_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLDirectoryElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement/compact)
impl THTMLDirectoryElement with set_compact(self : Self, compact : Bool) -> Unit {
  html_directory_element_set_compact_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(compact),
  )
}
