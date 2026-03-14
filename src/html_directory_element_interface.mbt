// Do not edit. This file is generated.
// MoonBit type: HTMLDirectoryElement
// Specifications: html.idl

/// [HTMLDirectoryElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement)
#external
pub type HTMLDirectoryElement

pub impl TJsValue for HTMLDirectoryElement with to_js(self: HTMLDirectoryElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLDirectoryElement with from_js_any(value : JsAny) -> HTMLDirectoryElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLDirectoryElement] HTMLDirectoryElement::into(self : HTMLDirectoryElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLDirectoryElement] HTMLDirectoryElement::unsafe_into(self : HTMLDirectoryElement) -> T = "%identity"

pub impl HasConstructor for HTMLDirectoryElement with constructor_name() { "HTMLDirectoryElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLDirectoryElement + HasConstructor] HTMLDirectoryElement::try_into(self : HTMLDirectoryElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLDirectoryElement for HTMLDirectoryElement

pub impl THTMLElement for HTMLDirectoryElement

pub impl TElement for HTMLDirectoryElement

pub impl TNode for HTMLDirectoryElement

pub impl TEventTarget for HTMLDirectoryElement

pub fn HTMLDirectoryElement::new() -> HTMLDirectoryElement {
  html_directory_element_new_ffi()
}

/// [HTMLDirectoryElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement) interface.
pub trait THTMLDirectoryElement: THTMLElement {
  compact(self : Self) -> Bool = _
  set_compact(self : Self, compact : Bool) -> Unit = _
}

/// [HTMLDirectoryElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement/compact)
impl THTMLDirectoryElement with compact(self : Self) -> Bool {
  html_directory_element_compact_ffi(TJsValue::to_js(self))
}

/// [HTMLDirectoryElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement/compact)
impl THTMLDirectoryElement with set_compact(self : Self, 
compact : Bool) -> Unit {
  html_directory_element_set_compact_ffi(TJsValue::to_js(self), TJsValue::to_js(compact))
}

#cfg(target="js")
extern "js" fn html_directory_element_new_ffi() -> HTMLDirectoryElement = "() => new HTMLDirectoryElement()"

#cfg(target="js")
extern "js" fn html_directory_element_compact_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.compact"

///|
#cfg(target="js")
fn html_directory_element_compact_ffi(obj: JsValue) -> Bool {
  html_directory_element_compact_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_directory_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "(obj, compact) => { obj.compact = compact; }"

#cfg(target="wasm-gc")
fn html_directory_element_new_ffi() -> HTMLDirectoryElement = "webapi_HTMLDirectoryElement" "new"

#cfg(target="wasm-gc")
fn html_directory_element_compact_ffi(obj: JsValue) -> Bool = "webapi_HTMLDirectoryElement" "get_compact"

#cfg(target="wasm-gc")
fn html_directory_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "webapi_HTMLDirectoryElement" "set_compact"