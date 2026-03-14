// Do not edit. This file is generated.
// MoonBit type: HTMLHeadingElement
// Specifications: html.idl

///|
/// [HTMLHeadingElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement)
#external
pub type HTMLHeadingElement

///|
pub impl TJsValue for HTMLHeadingElement with to_js(self : HTMLHeadingElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLHeadingElement with from_js_any(value : JsAny) -> HTMLHeadingElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLHeadingElement] HTMLHeadingElement::into(
  self : HTMLHeadingElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLHeadingElement] HTMLHeadingElement::unsafe_into(
  self : HTMLHeadingElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLHeadingElement with constructor_name() {
  "HTMLHeadingElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLHeadingElement + HasConstructor] HTMLHeadingElement::try_into(
  self : HTMLHeadingElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLHeadingElement for HTMLHeadingElement

///|
pub impl THTMLElement for HTMLHeadingElement

///|
pub impl TElement for HTMLHeadingElement

///|
pub impl TNode for HTMLHeadingElement

///|
pub impl TEventTarget for HTMLHeadingElement

///|
pub fn HTMLHeadingElement::new() -> HTMLHeadingElement {
  html_heading_element_new_ffi()
}

///|
/// [HTMLHeadingElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement) interface.
pub trait THTMLHeadingElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
/// [HTMLHeadingElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement/align)
impl THTMLHeadingElement with align(self : Self) -> String {
  html_heading_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLHeadingElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement/align)
impl THTMLHeadingElement with set_align(self : Self, align : String) -> Unit {
  html_heading_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
#cfg(target="js")
extern "js" fn html_heading_element_new_ffi() -> HTMLHeadingElement = "() => new HTMLHeadingElement()"

///|
#cfg(target="js")
extern "js" fn html_heading_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_heading_element_align_ffi(obj : JsValue) -> String {
  html_heading_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_heading_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="wasm-gc")
fn html_heading_element_new_ffi() -> HTMLHeadingElement = "webapi_HTMLHeadingElement" "new"

///|
#cfg(target="wasm-gc")
fn html_heading_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLHeadingElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_heading_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_heading_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_heading_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLHeadingElement" "set_align"
