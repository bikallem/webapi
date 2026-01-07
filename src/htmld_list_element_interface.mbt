// Do not edit. This file is generated.
// MoonBit type: HTMLDListElement
// Specifications: html.idl

///|
/// [HTMLDListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement)
#external
pub type HTMLDListElement

///|
pub impl TJsValue for HTMLDListElement with to_js(self : HTMLDListElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDListElement] HTMLDListElement::into(
  self : HTMLDListElement,
) -> T = "%identity"

///|
pub impl THTMLDListElement for HTMLDListElement

///|
pub impl THTMLElement for HTMLDListElement

///|
pub impl TElement for HTMLDListElement

///|
pub impl TNode for HTMLDListElement

///|
pub impl TEventTarget for HTMLDListElement

///|
extern "js" fn htmld_list_element_new_ffi() -> HTMLDListElement = "() => new HTMLDListElement()"

///|
pub fn HTMLDListElement::new() -> HTMLDListElement {
  htmld_list_element_new_ffi()
}

///|
/// [HTMLDListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement) interface.
pub trait THTMLDListElement: THTMLElement {
  compact(self : Self) -> Bool = _
  set_compact(self : Self, compact : Bool) -> Unit = _
}

///|
extern "js" fn htmld_list_element_compact_ffi(obj : JsValue) -> Bool = "(obj) => obj.compact"

///|
/// [HTMLDListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement/compact)
impl THTMLDListElement with compact(self : Self) -> Bool {
  htmld_list_element_compact_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmld_list_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"

///|
/// [HTMLDListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement/compact)
impl THTMLDListElement with set_compact(self : Self, compact : Bool) -> Unit {
  htmld_list_element_set_compact_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(compact),
  )
}
