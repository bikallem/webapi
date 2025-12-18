// Auto-generated MoonBit bindings for HTMLTimeElement interface
// Do not edit manually

#external
pub type HTMLTimeElement

pub impl TJsValue for HTMLTimeElement with to_js(self: HTMLTimeElement) -> JsValue = "%identity"


pub fn[T: THTMLTimeElement] HTMLTimeElement::into(self : HTMLTimeElement) -> T = "%identity"
pub impl THTMLTimeElement for HTMLTimeElement

pub fn HTMLTimeElement::new() -> HTMLTimeElement = "webapi_HTMLTimeElement" "new"

pub trait THTMLTimeElement: TJsValue + TTHTMLElement {
  date_time(self: Self) -> String = _
  set_date_time(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_time_element_date_time_ffi(obj : JsValue) -> String = "webapi_HTMLTimeElement" "dateTime"

///|
impl THTMLTimeElement with date_time(self : Self) -> String {
  h_t_m_l_time_element_date_time_ffi(self.to_js())
}

///|
fn h_t_m_l_time_element_set_date_time_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTimeElement" "set_dateTime"

///|
impl THTMLTimeElement with set_date_time(self : Self, value : String) -> Unit {
  h_t_m_l_time_element_set_date_time_ffi(self.to_js(), value)
}