// Do not edit. This file is generated.
// MoonBit type: HTMLTableCaptionElement
// Specifications: html.idl

///|
/// [HTMLTableCaptionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement)
#external
pub type HTMLTableCaptionElement

///|
pub impl TJsValue for HTMLTableCaptionElement with to_js(
  self : HTMLTableCaptionElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLTableCaptionElement with from_js_any(value : JsAny) -> HTMLTableCaptionElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLTableCaptionElement] HTMLTableCaptionElement::into(
  self : HTMLTableCaptionElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLTableCaptionElement] HTMLTableCaptionElement::unsafe_into(
  self : HTMLTableCaptionElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLTableCaptionElement with constructor_name() {
  "HTMLTableCaptionElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLTableCaptionElement + HasConstructor] HTMLTableCaptionElement::try_into(
  self : HTMLTableCaptionElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLTableCaptionElement for HTMLTableCaptionElement

///|
pub impl THTMLElement for HTMLTableCaptionElement

///|
pub impl TElement for HTMLTableCaptionElement

///|
pub impl TNode for HTMLTableCaptionElement

///|
pub impl TEventTarget for HTMLTableCaptionElement

///|
pub fn HTMLTableCaptionElement::new() -> HTMLTableCaptionElement {
  html_table_caption_element_new_ffi()
}

///|
/// [HTMLTableCaptionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement) interface.
pub trait THTMLTableCaptionElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
/// [HTMLTableCaptionElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement/align)
impl THTMLTableCaptionElement with align(self : Self) -> String {
  html_table_caption_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableCaptionElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement/align)
impl THTMLTableCaptionElement with set_align(self : Self, align : String) -> Unit {
  html_table_caption_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
#cfg(target="js")
extern "js" fn html_table_caption_element_new_ffi() -> HTMLTableCaptionElement = "() => new HTMLTableCaptionElement()"

///|
#cfg(target="js")
extern "js" fn html_table_caption_element_align_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_table_caption_element_align_ffi(obj : JsValue) -> String {
  html_table_caption_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_caption_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="wasm-gc")
fn html_table_caption_element_new_ffi() -> HTMLTableCaptionElement = "webapi_HTMLTableCaptionElement" "new"

///|
#cfg(target="wasm-gc")
fn html_table_caption_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableCaptionElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_table_caption_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_caption_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_caption_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "webapi_HTMLTableCaptionElement" "set_align"
