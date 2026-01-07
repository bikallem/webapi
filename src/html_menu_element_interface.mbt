// Do not edit. This file is generated.
// MoonBit type: HTMLMenuElement
// Specifications: html.idl

///|
/// [HTMLMenuElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement)
#external
pub type HTMLMenuElement

///|
pub impl TJsValue for HTMLMenuElement with to_js(self : HTMLMenuElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMenuElement] HTMLMenuElement::into(self : HTMLMenuElement) -> T = "%identity"

///|
pub impl THTMLMenuElement for HTMLMenuElement

///|
pub impl THTMLElement for HTMLMenuElement

///|
pub impl TElement for HTMLMenuElement

///|
pub impl TNode for HTMLMenuElement

///|
pub impl TEventTarget for HTMLMenuElement

///|
extern "js" fn html_menu_element_new_ffi() -> HTMLMenuElement = "() => new HTMLMenuElement()"

///|
pub fn HTMLMenuElement::new() -> HTMLMenuElement {
  html_menu_element_new_ffi()
}

///|
/// [HTMLMenuElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement) interface.
pub trait THTMLMenuElement: THTMLElement {
  compact(self : Self) -> Bool = _
  set_compact(self : Self, compact : Bool) -> Unit = _
}

///|
extern "js" fn html_menu_element_compact_ffi(obj : JsValue) -> Bool = "(obj) => obj.compact"

///|
/// [HTMLMenuElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement/compact)
impl THTMLMenuElement with compact(self : Self) -> Bool {
  html_menu_element_compact_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_menu_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"

///|
/// [HTMLMenuElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement/compact)
impl THTMLMenuElement with set_compact(self : Self, compact : Bool) -> Unit {
  html_menu_element_set_compact_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(compact),
  )
}
