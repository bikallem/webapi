// Do not edit. This file is generated.
// MoonBit type: HTMLParagraphElement
// Specifications: html.idl

/// [HTMLParagraphElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement)
#external
pub type HTMLParagraphElement

pub impl TJsValue for HTMLParagraphElement with to_js(self: HTMLParagraphElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLParagraphElement with from_js_any(value : JsAny) -> HTMLParagraphElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLParagraphElement] HTMLParagraphElement::into(self : HTMLParagraphElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLParagraphElement] HTMLParagraphElement::unsafe_into(self : HTMLParagraphElement) -> T = "%identity"

pub impl HasConstructor for HTMLParagraphElement with constructor_name() { "HTMLParagraphElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLParagraphElement + HasConstructor] HTMLParagraphElement::try_into(self : HTMLParagraphElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLParagraphElement for HTMLParagraphElement

pub impl THTMLElement for HTMLParagraphElement

pub impl TElement for HTMLParagraphElement

pub impl TNode for HTMLParagraphElement

pub impl TEventTarget for HTMLParagraphElement

pub fn HTMLParagraphElement::new() -> HTMLParagraphElement {
  html_paragraph_element_new_ffi()
}

/// [HTMLParagraphElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement) interface.
pub trait THTMLParagraphElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

/// [HTMLParagraphElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement/align)
impl THTMLParagraphElement with align(self : Self) -> String {
  html_paragraph_element_align_ffi(TJsValue::to_js(self))
}

/// [HTMLParagraphElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement/align)
impl THTMLParagraphElement with set_align(self : Self, 
align : String) -> Unit {
  html_paragraph_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

#cfg(target="js")
extern "js" fn html_paragraph_element_new_ffi() -> HTMLParagraphElement = "() => new HTMLParagraphElement()"

#cfg(target="js")
extern "js" fn html_paragraph_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_paragraph_element_align_ffi(obj: JsValue) -> String {
  html_paragraph_element_align_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_paragraph_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

#cfg(target="wasm-gc")
fn html_paragraph_element_new_ffi() -> HTMLParagraphElement = "webapi_HTMLParagraphElement" "new"

#cfg(target="wasm-gc")
fn html_paragraph_element_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLParagraphElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_paragraph_element_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_paragraph_element_align_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_paragraph_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "webapi_HTMLParagraphElement" "set_align"