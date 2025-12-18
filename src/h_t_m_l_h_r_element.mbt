// Auto-generated MoonBit bindings for HTMLHRElement interface
// Do not edit manually

#external
pub type HTMLHRElement

pub impl TJsValue for HTMLHRElement with to_js(self: HTMLHRElement) -> JsValue = "%identity"


pub fn[T: THTMLHRElement] HTMLHRElement::into(self : HTMLHRElement) -> T = "%identity"
pub impl THTMLHRElement for HTMLHRElement

pub fn HTMLHRElement::new() -> HTMLHRElement = "webapi_HTMLHRElement" "new"

pub trait THTMLHRElement: TJsValue + TTHTMLElement {
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  color(self: Self) -> String = _
  set_color(self: Self, value : String) -> Unit = _
  no_shade(self: Self) -> Bool = _
  set_no_shade(self: Self, value : Bool) -> Unit = _
  size(self: Self) -> String = _
  set_size(self: Self, value : String) -> Unit = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_h_r_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLHRElement" "align"

///|
impl THTMLHRElement with align(self : Self) -> String {
  h_t_m_l_h_r_element_align_ffi(self.to_js())
}

///|
fn h_t_m_l_h_r_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLHRElement" "set_align"

///|
impl THTMLHRElement with set_align(self : Self, value : String) -> Unit {
  h_t_m_l_h_r_element_set_align_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_h_r_element_color_ffi(obj : JsValue) -> String = "webapi_HTMLHRElement" "color"

///|
impl THTMLHRElement with color(self : Self) -> String {
  h_t_m_l_h_r_element_color_ffi(self.to_js())
}

///|
fn h_t_m_l_h_r_element_set_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLHRElement" "set_color"

///|
impl THTMLHRElement with set_color(self : Self, value : String) -> Unit {
  h_t_m_l_h_r_element_set_color_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_h_r_element_no_shade_ffi(obj : JsValue) -> Bool = "webapi_HTMLHRElement" "noShade"

///|
impl THTMLHRElement with no_shade(self : Self) -> Bool {
  h_t_m_l_h_r_element_no_shade_ffi(self.to_js())
}

///|
fn h_t_m_l_h_r_element_set_no_shade_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLHRElement" "set_noShade"

///|
impl THTMLHRElement with set_no_shade(self : Self, value : Bool) -> Unit {
  h_t_m_l_h_r_element_set_no_shade_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_h_r_element_size_ffi(obj : JsValue) -> String = "webapi_HTMLHRElement" "size"

///|
impl THTMLHRElement with size(self : Self) -> String {
  h_t_m_l_h_r_element_size_ffi(self.to_js())
}

///|
fn h_t_m_l_h_r_element_set_size_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLHRElement" "set_size"

///|
impl THTMLHRElement with set_size(self : Self, value : String) -> Unit {
  h_t_m_l_h_r_element_set_size_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_h_r_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLHRElement" "width"

///|
impl THTMLHRElement with width(self : Self) -> String {
  h_t_m_l_h_r_element_width_ffi(self.to_js())
}

///|
fn h_t_m_l_h_r_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLHRElement" "set_width"

///|
impl THTMLHRElement with set_width(self : Self, value : String) -> Unit {
  h_t_m_l_h_r_element_set_width_ffi(self.to_js(), value)
}