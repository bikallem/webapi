// Auto-generated MoonBit bindings for HTMLDetailsElement interface
// Do not edit manually

#external
pub type HTMLDetailsElement

pub impl TJsValue for HTMLDetailsElement with to_js(self: HTMLDetailsElement) -> JsValue = "%identity"


pub fn[T: THTMLDetailsElement] HTMLDetailsElement::into(self : HTMLDetailsElement) -> T = "%identity"
pub impl THTMLDetailsElement for HTMLDetailsElement

pub fn HTMLDetailsElement::new() -> HTMLDetailsElement = "webapi_HTMLDetailsElement" "new"

pub trait THTMLDetailsElement: TJsValue + TTHTMLElement {
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  open(self: Self) -> Bool = _
  set_open(self: Self, value : Bool) -> Unit = _
}

///|
fn h_t_m_l_details_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLDetailsElement" "name"

///|
impl THTMLDetailsElement with name(self : Self) -> String {
  h_t_m_l_details_element_name_ffi(self.to_js())
}

///|
fn h_t_m_l_details_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLDetailsElement" "set_name"

///|
impl THTMLDetailsElement with set_name(self : Self, value : String) -> Unit {
  h_t_m_l_details_element_set_name_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_details_element_open_ffi(obj : JsValue) -> Bool = "webapi_HTMLDetailsElement" "open"

///|
impl THTMLDetailsElement with open(self : Self) -> Bool {
  h_t_m_l_details_element_open_ffi(self.to_js())
}

///|
fn h_t_m_l_details_element_set_open_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLDetailsElement" "set_open"

///|
impl THTMLDetailsElement with set_open(self : Self, value : Bool) -> Unit {
  h_t_m_l_details_element_set_open_ffi(self.to_js(), value)
}