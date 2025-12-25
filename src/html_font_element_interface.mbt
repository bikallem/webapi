// Do not edit. This file is generated.
// MoonBit type: HTMLFontElement
// Specifications: html.idl

///|
#external
pub type HTMLFontElement

///|
pub impl TJsValue for HTMLFontElement with to_js(self : HTMLFontElement) -> JsValue = "%identity"

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
extern "js" fn html_font_element_new_ffi() -> HTMLFontElement = "() => new HTMLFontElement()"

///|
pub fn HTMLFontElement::new() -> HTMLFontElement {
  html_font_element_new_ffi()
}

///|
pub trait THTMLFontElement: THTMLElement {
  color(self : Self) -> String = _
  set_color(self : Self, color : String) -> Unit = _
  face(self : Self) -> String = _
  set_face(self : Self, face : String) -> Unit = _
  size(self : Self) -> String = _
  set_size(self : Self, size : String) -> Unit = _
}

///|
extern "js" fn html_font_element_color_ffi(obj : JsValue) -> String = "(obj) => obj.color"

///|
impl THTMLFontElement with color(self : Self) -> String {
  html_font_element_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_font_element_set_color_ffi(
  obj : JsValue,
  color : JsValue,
) -> Unit = "(obj, color) => { obj.color = color; }"

///|
impl THTMLFontElement with set_color(self : Self, color : String) -> Unit {
  html_font_element_set_color_ffi(TJsValue::to_js(self), TJsValue::to_js(color))
}

///|
extern "js" fn html_font_element_face_ffi(obj : JsValue) -> String = "(obj) => obj.face"

///|
impl THTMLFontElement with face(self : Self) -> String {
  html_font_element_face_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_font_element_set_face_ffi(
  obj : JsValue,
  face : JsValue,
) -> Unit = "(obj, face) => { obj.face = face; }"

///|
impl THTMLFontElement with set_face(self : Self, face : String) -> Unit {
  html_font_element_set_face_ffi(TJsValue::to_js(self), TJsValue::to_js(face))
}

///|
extern "js" fn html_font_element_size_ffi(obj : JsValue) -> String = "(obj) => obj.size"

///|
impl THTMLFontElement with size(self : Self) -> String {
  html_font_element_size_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_font_element_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
impl THTMLFontElement with set_size(self : Self, size : String) -> Unit {
  html_font_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}
