// Auto-generated MoonBit bindings for HTMLFontElement interface
// Do not edit manually

#external
pub type HTMLFontElement

pub impl TJsValue for HTMLFontElement with to_js(self: HTMLFontElement) -> JsValue = "%identity"


pub fn[T: THTMLFontElement] HTMLFontElement::into(self : HTMLFontElement) -> T = "%identity"
pub impl THTMLFontElement for HTMLFontElement

pub fn HTMLFontElement::new() -> HTMLFontElement = "webapi_HTMLFontElement" "new"

pub trait THTMLFontElement: TJsValue + TTHTMLElement {
  color(self: Self) -> String = _
  set_color(self: Self, value : String) -> Unit = _
  face(self: Self) -> String = _
  set_face(self: Self, value : String) -> Unit = _
  size(self: Self) -> String = _
  set_size(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_font_element_color_ffi(obj : JsValue) -> String = "webapi_HTMLFontElement" "color"

///|
impl THTMLFontElement with color(self : Self) -> String {
  h_t_m_l_font_element_color_ffi(self.to_js())
}

///|
fn h_t_m_l_font_element_set_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFontElement" "set_color"

///|
impl THTMLFontElement with set_color(self : Self, value : String) -> Unit {
  h_t_m_l_font_element_set_color_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_font_element_face_ffi(obj : JsValue) -> String = "webapi_HTMLFontElement" "face"

///|
impl THTMLFontElement with face(self : Self) -> String {
  h_t_m_l_font_element_face_ffi(self.to_js())
}

///|
fn h_t_m_l_font_element_set_face_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFontElement" "set_face"

///|
impl THTMLFontElement with set_face(self : Self, value : String) -> Unit {
  h_t_m_l_font_element_set_face_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_font_element_size_ffi(obj : JsValue) -> String = "webapi_HTMLFontElement" "size"

///|
impl THTMLFontElement with size(self : Self) -> String {
  h_t_m_l_font_element_size_ffi(self.to_js())
}

///|
fn h_t_m_l_font_element_set_size_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFontElement" "set_size"

///|
impl THTMLFontElement with set_size(self : Self, value : String) -> Unit {
  h_t_m_l_font_element_set_size_ffi(self.to_js(), value)
}