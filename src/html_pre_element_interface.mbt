// Do not edit. This file is generated.
// MoonBit type: HTMLPreElement
// Specifications: html.idl

///|
#external
pub type HTMLPreElement

///|
pub impl TJsValue for HTMLPreElement with to_js(self : HTMLPreElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLPreElement] HTMLPreElement::into(self : HTMLPreElement) -> T = "%identity"

///|
pub impl THTMLPreElement for HTMLPreElement

///|
pub impl THTMLElement for HTMLPreElement

///|
pub impl TElement for HTMLPreElement

///|
pub impl TNode for HTMLPreElement

///|
pub impl TEventTarget for HTMLPreElement

///|
extern "js" fn html_pre_element_new_ffi() -> HTMLPreElement = "() => new HTMLPreElement()"

///|
pub fn HTMLPreElement::new() -> HTMLPreElement {
  html_pre_element_new_ffi()
}

///|
pub trait THTMLPreElement: THTMLElement {
  width(self : Self) -> Int = _
  set_width(self : Self, width : Int) -> Unit = _
}

///|
extern "js" fn html_pre_element_width_ffi(obj : JsValue) -> Int = "(obj) => obj.width"

///|
impl THTMLPreElement with width(self : Self) -> Int {
  html_pre_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_pre_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLPreElement with set_width(self : Self, width : Int) -> Unit {
  html_pre_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}
