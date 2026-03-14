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

///|
#cfg(target="js")
extern "js" fn html_legend_element_new_ffi() -> HTMLLegendElement = "() => new HTMLLegendElement()"

///|
#cfg(target="js")
extern "js" fn html_legend_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_legend_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_legend_element_form_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_legend_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_legend_element_align_ffi(obj : JsValue) -> String {
  html_legend_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_legend_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="wasm-gc")
fn html_legend_element_new_ffi() -> HTMLLegendElement = "webapi_HTMLLegendElement" "new"

///|
#cfg(target="wasm-gc")
fn html_legend_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLLegendElement" "get_form"

///|
#cfg(target="wasm-gc")
fn html_legend_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLLegendElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_legend_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_legend_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_legend_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLLegendElement" "set_align"
