// Do not edit. This file is generated.
// MoonBit type: HTMLFontElement
// Specifications: html.idl

///|
/// [HTMLFontElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement)
#external
pub type HTMLFontElement

///|
pub impl TJsValue for HTMLFontElement with to_js(self : HTMLFontElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLFontElement with from_js_any(value : JsAny) -> HTMLFontElement = "%identity"

///|
pub fn[T : THTMLFontElement] HTMLFontElement::into(self : HTMLFontElement) -> T = "%identity"

///|
pub impl THTMLFontElement for HTMLFontElement

///|
pub impl THTMLElement for HTMLFontElement

///|
pub impl TElement for HTMLFontElement

///|
pub impl TNode for HTMLFontElement

///|
pub impl TEventTarget for HTMLFontElement

///|
pub fn HTMLFontElement::new() -> HTMLFontElement {
  html_font_element_new_ffi()
}

///|
/// [HTMLFontElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement) interface.
pub trait THTMLFontElement: THTMLElement {
  color(self : Self) -> String = _
  set_color(self : Self, color : String) -> Unit = _
  face(self : Self) -> String = _
  set_face(self : Self, face : String) -> Unit = _
  size(self : Self) -> String = _
  set_size(self : Self, size : String) -> Unit = _
}

///|
/// [HTMLFontElement.color](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement/color)
impl THTMLFontElement with color(self : Self) -> String {
  html_font_element_color_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFontElement.color](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement/color)
impl THTMLFontElement with set_color(self : Self, color : String) -> Unit {
  html_font_element_set_color_ffi(TJsValue::to_js(self), TJsValue::to_js(color))
}

///|
/// [HTMLFontElement.face](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement/face)
impl THTMLFontElement with face(self : Self) -> String {
  html_font_element_face_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFontElement.face](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement/face)
impl THTMLFontElement with set_face(self : Self, face : String) -> Unit {
  html_font_element_set_face_ffi(TJsValue::to_js(self), TJsValue::to_js(face))
}

///|
/// [HTMLFontElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement/size)
impl THTMLFontElement with size(self : Self) -> String {
  html_font_element_size_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFontElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement/size)
impl THTMLFontElement with set_size(self : Self, size : String) -> Unit {
  html_font_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

///|
#cfg(target="js")
extern "js" fn html_font_element_new_ffi() -> HTMLFontElement = "() => new HTMLFontElement()"

///|
#cfg(target="js")
extern "js" fn html_font_element_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.color"

///|
#cfg(target="js")
fn html_font_element_color_ffi(obj : JsValue) -> String {
  html_font_element_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_font_element_set_color_ffi(
  obj : JsValue,
  color : JsValue,
) -> Unit = "(obj, color) => { obj.color = color; }"

///|
#cfg(target="js")
extern "js" fn html_font_element_face_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.face"

///|
#cfg(target="js")
fn html_font_element_face_ffi(obj : JsValue) -> String {
  html_font_element_face_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_font_element_set_face_ffi(
  obj : JsValue,
  face : JsValue,
) -> Unit = "(obj, face) => { obj.face = face; }"

///|
#cfg(target="js")
extern "js" fn html_font_element_size_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn html_font_element_size_ffi(obj : JsValue) -> String {
  html_font_element_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_font_element_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
#cfg(target="wasm-gc")
fn html_font_element_new_ffi() -> HTMLFontElement = "webapi_HTMLFontElement" "new"

///|
#cfg(target="wasm-gc")
fn html_font_element_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFontElement" "get_color"

///|
#cfg(target="wasm-gc")
fn html_font_element_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_font_element_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_font_element_set_color_ffi(obj : JsValue, color : JsValue) -> Unit = "webapi_HTMLFontElement" "set_color"

///|
#cfg(target="wasm-gc")
fn html_font_element_face_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFontElement" "get_face"

///|
#cfg(target="wasm-gc")
fn html_font_element_face_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_font_element_face_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_font_element_set_face_ffi(obj : JsValue, face : JsValue) -> Unit = "webapi_HTMLFontElement" "set_face"

///|
#cfg(target="wasm-gc")
fn html_font_element_size_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFontElement" "get_size"

///|
#cfg(target="wasm-gc")
fn html_font_element_size_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_font_element_size_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_font_element_set_size_ffi(obj : JsValue, size : JsValue) -> Unit = "webapi_HTMLFontElement" "set_size"
