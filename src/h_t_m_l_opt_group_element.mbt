// Auto-generated MoonBit bindings for HTMLOptGroupElement interface
// Do not edit manually

#external
pub type HTMLOptGroupElement

pub impl TJsValue for HTMLOptGroupElement with to_js(self: HTMLOptGroupElement) -> JsValue = "%identity"


pub fn[T: THTMLOptGroupElement] HTMLOptGroupElement::into(self : HTMLOptGroupElement) -> T = "%identity"
pub impl THTMLOptGroupElement for HTMLOptGroupElement

pub fn HTMLOptGroupElement::new() -> HTMLOptGroupElement = "webapi_HTMLOptGroupElement" "new"

pub trait THTMLOptGroupElement: TJsValue + TTHTMLElement {
  disabled(self: Self) -> Bool = _
  set_disabled(self: Self, value : Bool) -> Unit = _
  label(self: Self) -> String = _
  set_label(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_opt_group_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLOptGroupElement" "disabled"

///|
impl THTMLOptGroupElement with disabled(self : Self) -> Bool {
  h_t_m_l_opt_group_element_disabled_ffi(self.to_js())
}

///|
fn h_t_m_l_opt_group_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLOptGroupElement" "set_disabled"

///|
impl THTMLOptGroupElement with set_disabled(self : Self, value : Bool) -> Unit {
  h_t_m_l_opt_group_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_opt_group_element_label_ffi(obj : JsValue) -> String = "webapi_HTMLOptGroupElement" "label"

///|
impl THTMLOptGroupElement with label(self : Self) -> String {
  h_t_m_l_opt_group_element_label_ffi(self.to_js())
}

///|
fn h_t_m_l_opt_group_element_set_label_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOptGroupElement" "set_label"

///|
impl THTMLOptGroupElement with set_label(self : Self, value : String) -> Unit {
  h_t_m_l_opt_group_element_set_label_ffi(self.to_js(), value)
}