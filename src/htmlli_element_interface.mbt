// Do not edit. This file is generated.
// MoonBit type: HTMLLIElement
// Specifications: html.idl

///|
/// [HTMLLIElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement)
#external
pub type HTMLLIElement

///|
pub impl TJsValue for HTMLLIElement with to_js(self : HTMLLIElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLLIElement with from_js_any(value : JsAny) -> HTMLLIElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLLIElement] HTMLLIElement::into(self : HTMLLIElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLLIElement] HTMLLIElement::unsafe_into(
  self : HTMLLIElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLLIElement with constructor_name() {
  "HTMLLIElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLLIElement + HasConstructor] HTMLLIElement::try_into(
  self : HTMLLIElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLLIElement for HTMLLIElement

///|
pub impl THTMLElement for HTMLLIElement

///|
pub impl TElement for HTMLLIElement

///|
pub impl TNode for HTMLLIElement

///|
pub impl TEventTarget for HTMLLIElement

///|
pub fn HTMLLIElement::new() -> HTMLLIElement {
  htmlli_element_new_ffi()
}

///|
/// [HTMLLIElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement) interface.
pub trait THTMLLIElement: THTMLElement {
  value(self : Self) -> Int = _
  set_value(self : Self, value : Int) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
}

///|
/// [HTMLLIElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/value)
impl THTMLLIElement with value(self : Self) -> Int {
  htmlli_element_value_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLIElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/value)
impl THTMLLIElement with set_value(self : Self, value : Int) -> Unit {
  htmlli_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
/// [HTMLLIElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/type)
impl THTMLLIElement with type_(self : Self) -> String {
  htmlli_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLIElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/type)
impl THTMLLIElement with set_type_(self : Self, type_ : String) -> Unit {
  htmlli_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
#cfg(target="js")
extern "js" fn htmlli_element_new_ffi() -> HTMLLIElement = "() => new HTMLLIElement()"

///|
#cfg(target="js")
extern "js" fn htmlli_element_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn htmlli_element_value_ffi(obj : JsValue) -> Int {
  htmlli_element_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmlli_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="js")
extern "js" fn htmlli_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn htmlli_element_type_ffi(obj : JsValue) -> String {
  htmlli_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmlli_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
#cfg(target="wasm-gc")
fn htmlli_element_new_ffi() -> HTMLLIElement = "webapi_HTMLLIElement" "new"

///|
#cfg(target="wasm-gc")
fn htmlli_element_value_ffi(obj : JsValue) -> Int = "webapi_HTMLLIElement" "get_value"

///|
#cfg(target="wasm-gc")
fn htmlli_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLLIElement" "set_value"

///|
#cfg(target="wasm-gc")
fn htmlli_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLLIElement" "get_type"

///|
#cfg(target="wasm-gc")
fn htmlli_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmlli_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmlli_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLLIElement" "set_type"
