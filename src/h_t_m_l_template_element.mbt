// Auto-generated MoonBit bindings for HTMLTemplateElement interface
// Do not edit manually

#external
pub type HTMLTemplateElement

pub impl TJsValue for HTMLTemplateElement with to_js(self: HTMLTemplateElement) -> JsValue = "%identity"


pub fn[T: THTMLTemplateElement] HTMLTemplateElement::into(self : HTMLTemplateElement) -> T = "%identity"
pub impl THTMLTemplateElement for HTMLTemplateElement

pub fn HTMLTemplateElement::new() -> HTMLTemplateElement = "webapi_HTMLTemplateElement" "new"

pub trait THTMLTemplateElement: TJsValue + TTHTMLElement {
  content(self: Self) -> &TDocumentFragment = _
  shadow_root_mode(self: Self) -> String = _
  set_shadow_root_mode(self: Self, value : String) -> Unit = _
  shadow_root_delegates_focus(self: Self) -> Bool = _
  set_shadow_root_delegates_focus(self: Self, value : Bool) -> Unit = _
  shadow_root_clonable(self: Self) -> Bool = _
  set_shadow_root_clonable(self: Self, value : Bool) -> Unit = _
  shadow_root_serializable(self: Self) -> Bool = _
  set_shadow_root_serializable(self: Self, value : Bool) -> Unit = _
  shadow_root_custom_element_registry(self: Self) -> String = _
  set_shadow_root_custom_element_registry(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_template_element_content_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTemplateElement" "content"

///|
impl THTMLTemplateElement with content(self : Self) -> &TDocumentFragment {
  h_t_m_l_template_element_content_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_template_element_shadow_root_mode_ffi(obj : JsValue) -> String = "webapi_HTMLTemplateElement" "shadowRootMode"

///|
impl THTMLTemplateElement with shadow_root_mode(self : Self) -> String {
  h_t_m_l_template_element_shadow_root_mode_ffi(self.to_js())
}

///|
fn h_t_m_l_template_element_set_shadow_root_mode_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootMode"

///|
impl THTMLTemplateElement with set_shadow_root_mode(self : Self, value : String) -> Unit {
  h_t_m_l_template_element_set_shadow_root_mode_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_template_element_shadow_root_delegates_focus_ffi(obj : JsValue) -> Bool = "webapi_HTMLTemplateElement" "shadowRootDelegatesFocus"

///|
impl THTMLTemplateElement with shadow_root_delegates_focus(self : Self) -> Bool {
  h_t_m_l_template_element_shadow_root_delegates_focus_ffi(self.to_js())
}

///|
fn h_t_m_l_template_element_set_shadow_root_delegates_focus_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootDelegatesFocus"

///|
impl THTMLTemplateElement with set_shadow_root_delegates_focus(self : Self, value : Bool) -> Unit {
  h_t_m_l_template_element_set_shadow_root_delegates_focus_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_template_element_shadow_root_clonable_ffi(obj : JsValue) -> Bool = "webapi_HTMLTemplateElement" "shadowRootClonable"

///|
impl THTMLTemplateElement with shadow_root_clonable(self : Self) -> Bool {
  h_t_m_l_template_element_shadow_root_clonable_ffi(self.to_js())
}

///|
fn h_t_m_l_template_element_set_shadow_root_clonable_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootClonable"

///|
impl THTMLTemplateElement with set_shadow_root_clonable(self : Self, value : Bool) -> Unit {
  h_t_m_l_template_element_set_shadow_root_clonable_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_template_element_shadow_root_serializable_ffi(obj : JsValue) -> Bool = "webapi_HTMLTemplateElement" "shadowRootSerializable"

///|
impl THTMLTemplateElement with shadow_root_serializable(self : Self) -> Bool {
  h_t_m_l_template_element_shadow_root_serializable_ffi(self.to_js())
}

///|
fn h_t_m_l_template_element_set_shadow_root_serializable_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootSerializable"

///|
impl THTMLTemplateElement with set_shadow_root_serializable(self : Self, value : Bool) -> Unit {
  h_t_m_l_template_element_set_shadow_root_serializable_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_template_element_shadow_root_custom_element_registry_ffi(obj : JsValue) -> String = "webapi_HTMLTemplateElement" "shadowRootCustomElementRegistry"

///|
impl THTMLTemplateElement with shadow_root_custom_element_registry(self : Self) -> String {
  h_t_m_l_template_element_shadow_root_custom_element_registry_ffi(self.to_js())
}

///|
fn h_t_m_l_template_element_set_shadow_root_custom_element_registry_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootCustomElementRegistry"

///|
impl THTMLTemplateElement with set_shadow_root_custom_element_registry(self : Self, value : String) -> Unit {
  h_t_m_l_template_element_set_shadow_root_custom_element_registry_ffi(self.to_js(), value)
}