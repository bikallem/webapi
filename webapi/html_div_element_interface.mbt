// Do not edit. This file is generated.
// MoonBit type: HTMLDivElement
// Specifications: html.idl

///|
/// [HTMLDivElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement)
#external
pub type HTMLDivElement

///|
pub impl TJsValue for HTMLDivElement with to_js(self : HTMLDivElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLDivElement with from_js_any(value : JsAny) -> HTMLDivElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLDivElement] HTMLDivElement::into(self : HTMLDivElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLDivElement] HTMLDivElement::unsafe_into(
  self : HTMLDivElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLDivElement with constructor_name() {
  "HTMLDivElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLDivElement + HasConstructor] HTMLDivElement::try_into(
  self : HTMLDivElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLDivElement for HTMLDivElement

///|
pub impl THTMLElement for HTMLDivElement

///|
pub impl TElement for HTMLDivElement

///|
pub impl TNode for HTMLDivElement

///|
pub impl TEventTarget for HTMLDivElement

///|
pub fn HTMLDivElement::new() -> HTMLDivElement {
  html_div_element_new_ffi()
}

///|
/// [HTMLDivElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement) interface.
pub trait THTMLDivElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
/// [HTMLDivElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement/align)
impl THTMLDivElement with align(self : Self) -> String {
  html_div_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDivElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement/align)
impl THTMLDivElement with set_align(self : Self, align : String) -> Unit {
  html_div_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

///|
#cfg(target="js")
extern "js" fn html_div_element_new_ffi() -> HTMLDivElement = "() => new HTMLDivElement()"

///|
#cfg(target="js")
extern "js" fn html_div_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_div_element_align_ffi(obj : JsValue) -> String {
  html_div_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_div_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="wasm-gc")
fn html_div_element_new_ffi() -> HTMLDivElement = "webapi_HTMLDivElement" "new"

///|
#cfg(target="wasm-gc")
fn html_div_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLDivElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_div_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_div_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_div_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLDivElement" "set_align"
