// Do not edit. This file is generated.
// MoonBit type: HTMLLIElement
// Specifications: html.idl

///|
#external
pub type HTMLLIElement

///|
pub impl TJsValue for HTMLLIElement with to_js(self : HTMLLIElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLIElement] HTMLLIElement::into(self : HTMLLIElement) -> T = "%identity"

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
extern "js" fn htmlli_element_new_ffi() -> HTMLLIElement = "() => new HTMLLIElement()"

///|
pub fn HTMLLIElement::new() -> HTMLLIElement {
  htmlli_element_new_ffi()
}

///|
pub trait THTMLLIElement: THTMLElement {
  value(self : Self) -> Int = _
  set_value(self : Self, value : Int) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
}

///|
extern "js" fn htmlli_element_value_ffi(obj : JsValue) -> Int = "(obj) => obj.value"

///|
impl THTMLLIElement with value(self : Self) -> Int {
  htmlli_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlli_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLLIElement with set_value(self : Self, value : Int) -> Unit {
  htmlli_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
extern "js" fn htmlli_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLLIElement with type_(self : Self) -> String {
  htmlli_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlli_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
impl THTMLLIElement with set_type_(self : Self, type_ : String) -> Unit {
  htmlli_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}
