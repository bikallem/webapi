// Do not edit. This file is generated.
// MoonBit type: HTMLBaseElement
// Specifications: html.idl

///|
/// [HTMLBaseElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement)
#external
pub type HTMLBaseElement

///|
pub impl TJsValue for HTMLBaseElement with to_js(self : HTMLBaseElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLBaseElement with from_js_any(value : JsAny) -> HTMLBaseElement = "%identity"

///|
pub fn[T : THTMLBaseElement] HTMLBaseElement::into(self : HTMLBaseElement) -> T = "%identity"

///|
pub impl THTMLBaseElement for HTMLBaseElement

///|
pub impl THTMLElement for HTMLBaseElement

///|
pub impl TElement for HTMLBaseElement

///|
pub impl TNode for HTMLBaseElement

///|
pub impl TEventTarget for HTMLBaseElement

///|
pub fn HTMLBaseElement::new() -> HTMLBaseElement {
  html_base_element_new_ffi()
}

///|
/// [HTMLBaseElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement) interface.
pub trait THTMLBaseElement: THTMLElement {
  href(self : Self) -> String = _
  set_href(self : Self, href : String) -> Unit = _
  target(self : Self) -> String = _
  set_target(self : Self, target : String) -> Unit = _
}

///|
/// [HTMLBaseElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/href)
impl THTMLBaseElement with href(self : Self) -> String {
  html_base_element_href_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBaseElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/href)
impl THTMLBaseElement with set_href(self : Self, href : String) -> Unit {
  html_base_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
/// [HTMLBaseElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/target)
impl THTMLBaseElement with target(self : Self) -> String {
  html_base_element_target_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBaseElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/target)
impl THTMLBaseElement with set_target(self : Self, target : String) -> Unit {
  html_base_element_set_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
#cfg(target="js")
extern "js" fn html_base_element_new_ffi() -> HTMLBaseElement = "() => new HTMLBaseElement()"

///|
#cfg(target="js")
extern "js" fn html_base_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn html_base_element_href_ffi(obj : JsValue) -> String {
  html_base_element_href_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_base_element_set_href_ffi(
  obj : JsValue,
  href : JsValue,
) -> Unit = "(obj, href) => { obj.href = href; }"

///|
#cfg(target="js")
extern "js" fn html_base_element_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn html_base_element_target_ffi(obj : JsValue) -> String {
  html_base_element_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_base_element_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
#cfg(target="wasm-gc")
fn html_base_element_new_ffi() -> HTMLBaseElement = "webapi_HTMLBaseElement" "new"

///|
#cfg(target="wasm-gc")
fn html_base_element_href_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLBaseElement" "get_href"

///|
#cfg(target="wasm-gc")
fn html_base_element_href_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_base_element_href_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_base_element_set_href_ffi(obj : JsValue, href : JsValue) -> Unit = "webapi_HTMLBaseElement" "set_href"

///|
#cfg(target="wasm-gc")
fn html_base_element_target_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLBaseElement" "get_target"

///|
#cfg(target="wasm-gc")
fn html_base_element_target_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_base_element_target_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_base_element_set_target_ffi(obj : JsValue, target : JsValue) -> Unit = "webapi_HTMLBaseElement" "set_target"
