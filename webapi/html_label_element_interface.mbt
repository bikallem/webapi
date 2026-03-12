// Do not edit. This file is generated.
// MoonBit type: HTMLLabelElement
// Specifications: html.idl

///|
/// [HTMLLabelElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement)
#external
pub type HTMLLabelElement

///|
pub impl TJsValue for HTMLLabelElement with to_js(self : HTMLLabelElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLLabelElement with from_js_any(value : JsAny) -> HTMLLabelElement = "%identity"

///|
pub fn[T : THTMLLabelElement] HTMLLabelElement::into(
  self : HTMLLabelElement,
) -> T = "%identity"

///|
pub impl THTMLLabelElement for HTMLLabelElement

///|
pub impl THTMLElement for HTMLLabelElement

///|
pub impl TElement for HTMLLabelElement

///|
pub impl TNode for HTMLLabelElement

///|
pub impl TEventTarget for HTMLLabelElement

///|
pub fn HTMLLabelElement::new() -> HTMLLabelElement {
  html_label_element_new_ffi()
}

///|
/// [HTMLLabelElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement) interface.
pub trait THTMLLabelElement: THTMLElement {
  form(self : Self) -> HTMLFormElement = _
  html_for(self : Self) -> String = _
  set_html_for(self : Self, html_for : String) -> Unit = _
  control(self : Self) -> HTMLElement = _
}

///|
/// [HTMLLabelElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement/form)
impl THTMLLabelElement with form(self : Self) -> HTMLFormElement {
  html_label_element_form_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLabelElement.htmlFor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement/htmlFor)
impl THTMLLabelElement with html_for(self : Self) -> String {
  html_label_element_html_for_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLabelElement.htmlFor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement/htmlFor)
impl THTMLLabelElement with set_html_for(self : Self, html_for : String) -> Unit {
  html_label_element_set_html_for_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(html_for),
  )
}

///|
/// [HTMLLabelElement.control](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement/control)
impl THTMLLabelElement with control(self : Self) -> HTMLElement {
  html_label_element_control_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_label_element_new_ffi() -> HTMLLabelElement = "() => new HTMLLabelElement()"

///|
#cfg(target="js")
extern "js" fn html_label_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_label_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_label_element_form_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_label_element_html_for_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.htmlFor"

///|
#cfg(target="js")
fn html_label_element_html_for_ffi(obj : JsValue) -> String {
  html_label_element_html_for_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_label_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "(obj, htmlFor) => { obj.htmlFor = htmlFor; }"

///|
#cfg(target="js")
extern "js" fn html_label_element_control_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.control"

///|
#cfg(target="js")
fn html_label_element_control_ffi(obj : JsValue) -> HTMLElement {
  html_label_element_control_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_label_element_new_ffi() -> HTMLLabelElement = "webapi_HTMLLabelElement" "new"

///|
#cfg(target="wasm-gc")
fn html_label_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLLabelElement" "get_form"

///|
#cfg(target="wasm-gc")
fn html_label_element_html_for_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLLabelElement" "get_htmlFor"

///|
#cfg(target="wasm-gc")
fn html_label_element_html_for_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_label_element_html_for_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_label_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "webapi_HTMLLabelElement" "set_htmlFor"

///|
#cfg(target="wasm-gc")
fn html_label_element_control_ffi(obj : JsValue) -> HTMLElement = "webapi_HTMLLabelElement" "get_control"
