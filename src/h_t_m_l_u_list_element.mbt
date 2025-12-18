// Auto-generated MoonBit bindings for HTMLUListElement interface
// Do not edit manually

#external
pub type HTMLUListElement

pub impl TJsValue for HTMLUListElement with to_js(self: HTMLUListElement) -> JsValue = "%identity"


pub fn[T: THTMLUListElement] HTMLUListElement::into(self : HTMLUListElement) -> T = "%identity"
pub impl THTMLUListElement for HTMLUListElement

pub fn HTMLUListElement::new() -> HTMLUListElement = "webapi_HTMLUListElement" "new"

pub trait THTMLUListElement: TJsValue + TTHTMLElement {
  compact(self: Self) -> Bool = _
  set_compact(self: Self, value : Bool) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_u_list_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLUListElement" "compact"

///|
impl THTMLUListElement with compact(self : Self) -> Bool {
  h_t_m_l_u_list_element_compact_ffi(self.to_js())
}

///|
fn h_t_m_l_u_list_element_set_compact_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLUListElement" "set_compact"

///|
impl THTMLUListElement with set_compact(self : Self, value : Bool) -> Unit {
  h_t_m_l_u_list_element_set_compact_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_u_list_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLUListElement" "type"

///|
impl THTMLUListElement with type_(self : Self) -> String {
  h_t_m_l_u_list_element_type_ffi(self.to_js())
}

///|
fn h_t_m_l_u_list_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLUListElement" "set_type"

///|
impl THTMLUListElement with set_type_(self : Self, value : String) -> Unit {
  h_t_m_l_u_list_element_set_type_ffi(self.to_js(), value)
}