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
pub impl FromJsAny for HTMLDListElement with from_js_any(value : JsAny) -> HTMLDListElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLDListElement] HTMLDListElement::into(
  self : HTMLDListElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLDListElement] HTMLDListElement::unsafe_into(
  self : HTMLDListElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLDListElement with constructor_name() {
  "HTMLDListElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLDListElement + HasConstructor] HTMLDListElement::try_into(
  self : HTMLDListElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
/// [HTMLDListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement/compact)
impl THTMLDListElement with compact(self : Self) -> Bool {
  htmld_list_element_compact_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement/compact)
impl THTMLDListElement with set_compact(self : Self, compact : Bool) -> Unit {
  htmld_list_element_set_compact_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(compact),
  )
}

///|
#cfg(target="js")
extern "js" fn htmld_list_element_new_ffi() -> HTMLDListElement = "() => new HTMLDListElement()"

///|
#cfg(target="js")
extern "js" fn htmld_list_element_compact_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.compact"

///|
#cfg(target="js")
fn htmld_list_element_compact_ffi(obj : JsValue) -> Bool {
  htmld_list_element_compact_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmld_list_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"

///|
#cfg(target="wasm-gc")
fn htmld_list_element_new_ffi() -> HTMLDListElement = "webapi_HTMLDListElement" "new"

///|
#cfg(target="wasm-gc")
fn htmld_list_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLDListElement" "get_compact"

///|
#cfg(target="wasm-gc")
fn htmld_list_element_set_compact_ffi(obj : JsValue, compact : JsValue) -> Unit = "webapi_HTMLDListElement" "set_compact"
