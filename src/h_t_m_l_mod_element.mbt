// Auto-generated MoonBit bindings for HTMLModElement interface
// Do not edit manually

#external
pub type HTMLModElement

pub impl TJsValue for HTMLModElement with to_js(self: HTMLModElement) -> JsValue = "%identity"


pub fn[T: THTMLModElement] HTMLModElement::into(self : HTMLModElement) -> T = "%identity"
pub impl THTMLModElement for HTMLModElement

pub fn HTMLModElement::new() -> HTMLModElement = "webapi_HTMLModElement" "new"

pub trait THTMLModElement: TJsValue + TTHTMLElement {
  cite(self: Self) -> String = _
  set_cite(self: Self, value : String) -> Unit = _
  date_time(self: Self) -> String = _
  set_date_time(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_mod_element_cite_ffi(obj : JsValue) -> String = "webapi_HTMLModElement" "cite"

///|
impl THTMLModElement with cite(self : Self) -> String {
  h_t_m_l_mod_element_cite_ffi(self.to_js())
}

///|
fn h_t_m_l_mod_element_set_cite_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLModElement" "set_cite"

///|
impl THTMLModElement with set_cite(self : Self, value : String) -> Unit {
  h_t_m_l_mod_element_set_cite_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_mod_element_date_time_ffi(obj : JsValue) -> String = "webapi_HTMLModElement" "dateTime"

///|
impl THTMLModElement with date_time(self : Self) -> String {
  h_t_m_l_mod_element_date_time_ffi(self.to_js())
}

///|
fn h_t_m_l_mod_element_set_date_time_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLModElement" "set_dateTime"

///|
impl THTMLModElement with set_date_time(self : Self, value : String) -> Unit {
  h_t_m_l_mod_element_set_date_time_ffi(self.to_js(), value)
}