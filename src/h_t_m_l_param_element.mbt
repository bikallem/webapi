// Auto-generated MoonBit bindings for HTMLParamElement interface
// Do not edit manually

#external
pub type HTMLParamElement

pub impl TJsValue for HTMLParamElement with to_js(self: HTMLParamElement) -> JsValue = "%identity"


pub fn[T: THTMLParamElement] HTMLParamElement::into(self : HTMLParamElement) -> T = "%identity"
pub impl THTMLParamElement for HTMLParamElement

pub fn HTMLParamElement::new() -> HTMLParamElement = "webapi_HTMLParamElement" "new"

pub trait THTMLParamElement: TJsValue + TTHTMLElement {
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  value(self: Self) -> String = _
  set_value(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
  value_type(self: Self) -> String = _
  set_value_type(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_param_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLParamElement" "name"

///|
impl THTMLParamElement with name(self : Self) -> String {
  h_t_m_l_param_element_name_ffi(self.to_js())
}

///|
fn h_t_m_l_param_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLParamElement" "set_name"

///|
impl THTMLParamElement with set_name(self : Self, value : String) -> Unit {
  h_t_m_l_param_element_set_name_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_param_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLParamElement" "value"

///|
impl THTMLParamElement with value(self : Self) -> String {
  h_t_m_l_param_element_value_ffi(self.to_js())
}

///|
fn h_t_m_l_param_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLParamElement" "set_value"

///|
impl THTMLParamElement with set_value(self : Self, value : String) -> Unit {
  h_t_m_l_param_element_set_value_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_param_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLParamElement" "type"

///|
impl THTMLParamElement with type_(self : Self) -> String {
  h_t_m_l_param_element_type_ffi(self.to_js())
}

///|
fn h_t_m_l_param_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLParamElement" "set_type"

///|
impl THTMLParamElement with set_type_(self : Self, value : String) -> Unit {
  h_t_m_l_param_element_set_type_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_param_element_value_type_ffi(obj : JsValue) -> String = "webapi_HTMLParamElement" "valueType"

///|
impl THTMLParamElement with value_type(self : Self) -> String {
  h_t_m_l_param_element_value_type_ffi(self.to_js())
}

///|
fn h_t_m_l_param_element_set_value_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLParamElement" "set_valueType"

///|
impl THTMLParamElement with set_value_type(self : Self, value : String) -> Unit {
  h_t_m_l_param_element_set_value_type_ffi(self.to_js(), value)
}