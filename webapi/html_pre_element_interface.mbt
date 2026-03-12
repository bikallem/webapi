// Do not edit. This file is generated.
// MoonBit type: HTMLPreElement
// Specifications: html.idl

///|
/// [HTMLPreElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement)
#external
pub type HTMLPreElement

///|
pub impl TJsValue for HTMLPreElement with to_js(self : HTMLPreElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLPreElement with from_js_any(value : JsAny) -> HTMLPreElement = "%identity"

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
pub fn HTMLPreElement::new() -> HTMLPreElement {
  html_pre_element_new_ffi()
}

///|
/// [HTMLPreElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement) interface.
pub trait THTMLPreElement: THTMLElement {
  width(self : Self) -> Int = _
  set_width(self : Self, width : Int) -> Unit = _
}

///|
/// [HTMLPreElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement/width)
impl THTMLPreElement with width(self : Self) -> Int {
  html_pre_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLPreElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement/width)
impl THTMLPreElement with set_width(self : Self, width : Int) -> Unit {
  html_pre_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

///|
#cfg(target="js")
extern "js" fn html_pre_element_new_ffi() -> HTMLPreElement = "() => new HTMLPreElement()"

///|
#cfg(target="js")
extern "js" fn html_pre_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_pre_element_width_ffi(obj : JsValue) -> Int {
  html_pre_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_pre_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="wasm-gc")
fn html_pre_element_new_ffi() -> HTMLPreElement = "webapi_HTMLPreElement" "new"

///|
#cfg(target="wasm-gc")
fn html_pre_element_width_ffi(obj : JsValue) -> Int = "webapi_HTMLPreElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_pre_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLPreElement" "set_width"
