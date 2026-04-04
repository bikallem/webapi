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
pub impl FromJsAny for HTMLMenuElement with from_js_any(value : JsAny) -> HTMLMenuElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLMenuElement] HTMLMenuElement::into(self : HTMLMenuElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLMenuElement] HTMLMenuElement::unsafe_into(
  self : HTMLMenuElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLMenuElement with constructor_name() {
  "HTMLMenuElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLMenuElement + HasConstructor] HTMLMenuElement::try_into(
  self : HTMLMenuElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
/// [HTMLMenuElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement/compact)
impl THTMLMenuElement with compact(self : Self) -> Bool {
  html_menu_element_compact_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMenuElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement/compact)
impl THTMLMenuElement with set_compact(self : Self, compact : Bool) -> Unit {
  html_menu_element_set_compact_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(compact),
  )
}

///|
#cfg(target="js")
extern "js" fn html_menu_element_new_ffi() -> HTMLMenuElement = "() => new HTMLMenuElement()"

///|
#cfg(target="js")
extern "js" fn html_menu_element_compact_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.compact"

///|
#cfg(target="js")
fn html_menu_element_compact_ffi(obj : JsValue) -> Bool {
  html_menu_element_compact_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_menu_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"

///|
#cfg(target="wasm-gc")
fn html_menu_element_new_ffi() -> HTMLMenuElement = "webapi_HTMLMenuElement" "new"

///|
#cfg(target="wasm-gc")
fn html_menu_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLMenuElement" "get_compact"

///|
#cfg(target="wasm-gc")
fn html_menu_element_set_compact_ffi(obj : JsValue, compact : JsValue) -> Unit = "webapi_HTMLMenuElement" "set_compact"
