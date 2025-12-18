// Auto-generated MoonBit bindings for HTMLMapElement interface
// Do not edit manually

#external
pub type HTMLMapElement

pub impl TJsValue for HTMLMapElement with to_js(self: HTMLMapElement) -> JsValue = "%identity"


pub fn[T: THTMLMapElement] HTMLMapElement::into(self : HTMLMapElement) -> T = "%identity"
pub impl THTMLMapElement for HTMLMapElement

pub fn HTMLMapElement::new() -> HTMLMapElement = "webapi_HTMLMapElement" "new"

pub trait THTMLMapElement: TJsValue + TTHTMLElement {
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  areas(self: Self) -> &THTMLCollection = _
}

///|
fn h_t_m_l_map_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLMapElement" "name"

///|
impl THTMLMapElement with name(self : Self) -> String {
  h_t_m_l_map_element_name_ffi(self.to_js())
}

///|
fn h_t_m_l_map_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMapElement" "set_name"

///|
impl THTMLMapElement with set_name(self : Self, value : String) -> Unit {
  h_t_m_l_map_element_set_name_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_map_element_areas_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMapElement" "areas"

///|
impl THTMLMapElement with areas(self : Self) -> &THTMLCollection {
  h_t_m_l_map_element_areas_ffi(self.to_js()).unsafe_cast()
}