// Do not edit. This file is generated.
// MoonBit type: HTMLMapElement
// Specifications: html.idl

///|
/// [HTMLMapElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement)
#external
pub type HTMLMapElement

///|
pub impl TJsValue for HTMLMapElement with to_js(self : HTMLMapElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLMapElement with from_js_any(value : JsAny) -> HTMLMapElement = "%identity"

///|
pub fn[T : THTMLMapElement] HTMLMapElement::into(self : HTMLMapElement) -> T = "%identity"

///|
pub impl THTMLMapElement for HTMLMapElement

///|
pub impl THTMLElement for HTMLMapElement

///|
pub impl TElement for HTMLMapElement

///|
pub impl TNode for HTMLMapElement

///|
pub impl TEventTarget for HTMLMapElement

///|
pub fn HTMLMapElement::new() -> HTMLMapElement {
  html_map_element_new_ffi()
}

///|
/// [HTMLMapElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement) interface.
pub trait THTMLMapElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  areas(self : Self) -> HTMLCollection = _
}

///|
/// [HTMLMapElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement/name)
impl THTMLMapElement with name(self : Self) -> String {
  html_map_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMapElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement/name)
impl THTMLMapElement with set_name(self : Self, name : String) -> Unit {
  html_map_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLMapElement.areas](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement/areas)
impl THTMLMapElement with areas(self : Self) -> HTMLCollection {
  html_map_element_areas_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_map_element_new_ffi() -> HTMLMapElement = "() => new HTMLMapElement()"

///|
#cfg(target="js")
extern "js" fn html_map_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_map_element_name_ffi(obj : JsValue) -> String {
  html_map_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_map_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_map_element_areas_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.areas"

///|
#cfg(target="js")
fn html_map_element_areas_ffi(obj : JsValue) -> HTMLCollection {
  html_map_element_areas_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_map_element_new_ffi() -> HTMLMapElement = "webapi_HTMLMapElement" "new"

///|
#cfg(target="wasm-gc")
fn html_map_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMapElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_map_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_map_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_map_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLMapElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_map_element_areas_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLMapElement" "get_areas"
