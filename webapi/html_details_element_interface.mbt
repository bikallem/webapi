// Do not edit. This file is generated.
// MoonBit type: HTMLDetailsElement
// Specifications: html.idl

///|
/// [HTMLDetailsElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement)
#external
pub type HTMLDetailsElement

///|
pub impl TJsValue for HTMLDetailsElement with to_js(self : HTMLDetailsElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLDetailsElement with from_js_any(value : JsAny) -> HTMLDetailsElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLDetailsElement] HTMLDetailsElement::into(
  self : HTMLDetailsElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLDetailsElement] HTMLDetailsElement::unsafe_into(
  self : HTMLDetailsElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLDetailsElement with constructor_name() {
  "HTMLDetailsElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLDetailsElement + HasConstructor] HTMLDetailsElement::try_into(
  self : HTMLDetailsElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLDetailsElement for HTMLDetailsElement

///|
pub impl THTMLElement for HTMLDetailsElement

///|
pub impl TElement for HTMLDetailsElement

///|
pub impl TNode for HTMLDetailsElement

///|
pub impl TEventTarget for HTMLDetailsElement

///|
pub fn HTMLDetailsElement::new() -> HTMLDetailsElement {
  html_details_element_new_ffi()
}

///|
/// [HTMLDetailsElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement) interface.
pub trait THTMLDetailsElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  open(self : Self) -> Bool = _
  set_open(self : Self, open : Bool) -> Unit = _
}

///|
/// [HTMLDetailsElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/name)
impl THTMLDetailsElement with name(self : Self) -> String {
  html_details_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDetailsElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/name)
impl THTMLDetailsElement with set_name(self : Self, name : String) -> Unit {
  html_details_element_set_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
/// [HTMLDetailsElement.open](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/open)
impl THTMLDetailsElement with open(self : Self) -> Bool {
  html_details_element_open_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDetailsElement.open](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/open)
impl THTMLDetailsElement with set_open(self : Self, open : Bool) -> Unit {
  html_details_element_set_open_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(open),
  )
}

///|
#cfg(target="js")
extern "js" fn html_details_element_new_ffi() -> HTMLDetailsElement = "() => new HTMLDetailsElement()"

///|
#cfg(target="js")
extern "js" fn html_details_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_details_element_name_ffi(obj : JsValue) -> String {
  html_details_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_details_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_details_element_open_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.open"

///|
#cfg(target="js")
fn html_details_element_open_ffi(obj : JsValue) -> Bool {
  html_details_element_open_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_details_element_set_open_ffi(
  obj : JsValue,
  open : JsValue,
) -> Unit = "(obj, open) => { obj.open = open; }"

///|
#cfg(target="wasm-gc")
fn html_details_element_new_ffi() -> HTMLDetailsElement = "webapi_HTMLDetailsElement" "new"

///|
#cfg(target="wasm-gc")
fn html_details_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLDetailsElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_details_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_details_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_details_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLDetailsElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_details_element_open_ffi(obj : JsValue) -> Bool = "webapi_HTMLDetailsElement" "get_open"

///|
#cfg(target="wasm-gc")
fn html_details_element_set_open_ffi(obj : JsValue, open : JsValue) -> Unit = "webapi_HTMLDetailsElement" "set_open"
