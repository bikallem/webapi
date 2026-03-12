// Do not edit. This file is generated.
// MoonBit type: HTMLLegendElement
// Specifications: html.idl

///|
/// [HTMLLegendElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement)
#external
pub type HTMLLegendElement

///|
pub impl TJsValue for HTMLLegendElement with to_js(self : HTMLLegendElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLLegendElement with from_js_any(value : JsAny) -> HTMLLegendElement = "%identity"

///|
pub fn[T : THTMLLegendElement] HTMLLegendElement::into(
  self : HTMLLegendElement,
) -> T = "%identity"

///|
pub impl THTMLLegendElement for HTMLLegendElement

///|
pub impl THTMLElement for HTMLLegendElement

///|
pub impl TElement for HTMLLegendElement

///|
pub impl TNode for HTMLLegendElement

///|
pub impl TEventTarget for HTMLLegendElement

///|
pub fn HTMLLegendElement::new() -> HTMLLegendElement {
  html_legend_element_new_ffi()
}

///|
/// [HTMLLegendElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement) interface.
pub trait THTMLLegendElement: THTMLElement {
  form(self : Self) -> HTMLFormElement = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
/// [HTMLLegendElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement/form)
impl THTMLLegendElement with form(self : Self) -> HTMLFormElement {
  html_legend_element_form_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLegendElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement/align)
impl THTMLLegendElement with align(self : Self) -> String {
  html_legend_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLegendElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement/align)
impl THTMLLegendElement with set_align(self : Self, align : String) -> Unit {
  html_legend_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}
