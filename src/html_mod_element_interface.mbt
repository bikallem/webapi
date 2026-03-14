// Do not edit. This file is generated.
// MoonBit type: HTMLModElement
// Specifications: html.idl

/// [HTMLModElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement)
#external
pub type HTMLModElement

pub impl TJsValue for HTMLModElement with to_js(self: HTMLModElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLModElement with from_js_any(value : JsAny) -> HTMLModElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLModElement] HTMLModElement::into(self : HTMLModElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLModElement] HTMLModElement::unsafe_into(self : HTMLModElement) -> T = "%identity"

pub impl HasConstructor for HTMLModElement with constructor_name() { "HTMLModElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLModElement + HasConstructor] HTMLModElement::try_into(self : HTMLModElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLModElement for HTMLModElement

pub impl THTMLElement for HTMLModElement

pub impl TElement for HTMLModElement

pub impl TNode for HTMLModElement

pub impl TEventTarget for HTMLModElement

pub fn HTMLModElement::new() -> HTMLModElement {
  html_mod_element_new_ffi()
}

/// [HTMLModElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement) interface.
pub trait THTMLModElement: THTMLElement {
  cite(self : Self) -> String = _
  set_cite(self : Self, cite : String) -> Unit = _
  date_time(self : Self) -> String = _
  set_date_time(self : Self, date_time : String) -> Unit = _
}

/// [HTMLModElement.cite](https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement/cite)
impl THTMLModElement with cite(self : Self) -> String {
  html_mod_element_cite_ffi(TJsValue::to_js(self))
}

/// [HTMLModElement.cite](https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement/cite)
impl THTMLModElement with set_cite(self : Self, 
cite : String) -> Unit {
  html_mod_element_set_cite_ffi(TJsValue::to_js(self), TJsValue::to_js(cite))
}

/// [HTMLModElement.dateTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement/dateTime)
impl THTMLModElement with date_time(self : Self) -> String {
  html_mod_element_date_time_ffi(TJsValue::to_js(self))
}

/// [HTMLModElement.dateTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement/dateTime)
impl THTMLModElement with set_date_time(self : Self, 
date_time : String) -> Unit {
  html_mod_element_set_date_time_ffi(TJsValue::to_js(self), TJsValue::to_js(date_time))
}

#cfg(target="js")
extern "js" fn html_mod_element_new_ffi() -> HTMLModElement = "() => new HTMLModElement()"

#cfg(target="js")
extern "js" fn html_mod_element_cite_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cite"

///|
#cfg(target="js")
fn html_mod_element_cite_ffi(obj: JsValue) -> String {
  html_mod_element_cite_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_mod_element_set_cite_ffi(obj: JsValue, cite: JsValue) -> Unit = "(obj, cite) => { obj.cite = cite; }"

#cfg(target="js")
extern "js" fn html_mod_element_date_time_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dateTime"

///|
#cfg(target="js")
fn html_mod_element_date_time_ffi(obj: JsValue) -> String {
  html_mod_element_date_time_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_mod_element_set_date_time_ffi(obj: JsValue, date_time: JsValue) -> Unit = "(obj, dateTime) => { obj.dateTime = dateTime; }"

#cfg(target="wasm-gc")
fn html_mod_element_new_ffi() -> HTMLModElement = "webapi_HTMLModElement" "new"

#cfg(target="wasm-gc")
fn html_mod_element_cite_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLModElement" "get_cite"

///|
#cfg(target="wasm-gc")
fn html_mod_element_cite_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_mod_element_cite_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_mod_element_set_cite_ffi(obj: JsValue, cite: JsValue) -> Unit = "webapi_HTMLModElement" "set_cite"

#cfg(target="wasm-gc")
fn html_mod_element_date_time_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLModElement" "get_dateTime"

///|
#cfg(target="wasm-gc")
fn html_mod_element_date_time_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_mod_element_date_time_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_mod_element_set_date_time_ffi(obj: JsValue, date_time: JsValue) -> Unit = "webapi_HTMLModElement" "set_dateTime"