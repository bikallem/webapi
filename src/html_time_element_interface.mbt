// Do not edit. This file is generated.
// MoonBit type: HTMLTimeElement
// Specifications: html.idl

///|
/// [HTMLTimeElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement)
#external
pub type HTMLTimeElement

///|
pub impl TJsValue for HTMLTimeElement with to_js(self : HTMLTimeElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLTimeElement with from_js_any(value : JsAny) -> HTMLTimeElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLTimeElement] HTMLTimeElement::into(self : HTMLTimeElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLTimeElement] HTMLTimeElement::unsafe_into(
  self : HTMLTimeElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLTimeElement with constructor_name() {
  "HTMLTimeElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLTimeElement + HasConstructor] HTMLTimeElement::try_into(
  self : HTMLTimeElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLTimeElement for HTMLTimeElement

///|
pub impl THTMLElement for HTMLTimeElement

///|
pub impl TElement for HTMLTimeElement

///|
pub impl TNode for HTMLTimeElement

///|
pub impl TEventTarget for HTMLTimeElement

///|
pub fn HTMLTimeElement::new() -> HTMLTimeElement {
  html_time_element_new_ffi()
}

///|
/// [HTMLTimeElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement) interface.
pub trait THTMLTimeElement: THTMLElement {
  date_time(self : Self) -> String = _
  set_date_time(self : Self, date_time : String) -> Unit = _
}

///|
/// [HTMLTimeElement.dateTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement/dateTime)
impl THTMLTimeElement with date_time(self : Self) -> String {
  html_time_element_date_time_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTimeElement.dateTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement/dateTime)
impl THTMLTimeElement with set_date_time(self : Self, date_time : String) -> Unit {
  html_time_element_set_date_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(date_time),
  )
}

///|
#cfg(target="js")
extern "js" fn html_time_element_new_ffi() -> HTMLTimeElement = "() => new HTMLTimeElement()"

///|
#cfg(target="js")
extern "js" fn html_time_element_date_time_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dateTime"

///|
#cfg(target="js")
fn html_time_element_date_time_ffi(obj : JsValue) -> String {
  html_time_element_date_time_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_time_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "(obj, dateTime) => { obj.dateTime = dateTime; }"

///|
#cfg(target="wasm-gc")
fn html_time_element_new_ffi() -> HTMLTimeElement = "webapi_HTMLTimeElement" "new"

///|
#cfg(target="wasm-gc")
fn html_time_element_date_time_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTimeElement" "get_dateTime"

///|
#cfg(target="wasm-gc")
fn html_time_element_date_time_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_time_element_date_time_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_time_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "webapi_HTMLTimeElement" "set_dateTime"
