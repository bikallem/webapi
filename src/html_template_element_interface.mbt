// Do not edit. This file is generated.
// MoonBit type: HTMLTemplateElement
// Specifications: html.idl

///|
#external
pub type HTMLTemplateElement

///|
pub impl TJsValue for HTMLTemplateElement with to_js(self : HTMLTemplateElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTemplateElement] HTMLTemplateElement::into(
  self : HTMLTemplateElement,
) -> T = "%identity"

///|
pub impl THTMLTemplateElement for HTMLTemplateElement

///|
pub impl THTMLElement for HTMLTemplateElement

///|
pub impl TElement for HTMLTemplateElement

///|
pub impl TNode for HTMLTemplateElement

///|
pub impl TEventTarget for HTMLTemplateElement

///|
extern "js" fn html_template_element_new_ffi() -> HTMLTemplateElement = "() => new HTMLTemplateElement()"

///|
pub fn HTMLTemplateElement::new() -> HTMLTemplateElement {
  html_template_element_new_ffi()
}

///|
pub trait THTMLTemplateElement: THTMLElement {
  content(self : Self) -> DocumentFragment = _
  shadow_root_mode(self : Self) -> String = _
  set_shadow_root_mode(self : Self, shadow_root_mode : String) -> Unit = _
  shadow_root_delegates_focus(self : Self) -> Bool = _
  set_shadow_root_delegates_focus(
    self : Self,
    shadow_root_delegates_focus : Bool,
  ) -> Unit = _
  shadow_root_clonable(self : Self) -> Bool = _
  set_shadow_root_clonable(self : Self, shadow_root_clonable : Bool) -> Unit = _
  shadow_root_serializable(self : Self) -> Bool = _
  set_shadow_root_serializable(self : Self, shadow_root_serializable : Bool) -> Unit = _
  shadow_root_custom_element_registry(self : Self) -> String = _
  set_shadow_root_custom_element_registry(
    self : Self,
    shadow_root_custom_element_registry : String,
  ) -> Unit = _
}

///|
extern "js" fn html_template_element_content_ffi(
  obj : JsValue,
) -> DocumentFragment = "(obj) => obj.content"

///|
impl THTMLTemplateElement with content(self : Self) -> DocumentFragment {
  html_template_element_content_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_template_element_shadow_root_mode_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.shadowRootMode"

///|
impl THTMLTemplateElement with shadow_root_mode(self : Self) -> String {
  html_template_element_shadow_root_mode_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_template_element_set_shadow_root_mode_ffi(
  obj : JsValue,
  shadow_root_mode : JsValue,
) -> Unit = "(obj, shadowRootMode) => { obj.shadowRootMode = shadowRootMode; }"

///|
impl THTMLTemplateElement with set_shadow_root_mode(
  self : Self,
  shadow_root_mode : String,
) -> Unit {
  html_template_element_set_shadow_root_mode_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_root_mode),
  )
}

///|
extern "js" fn html_template_element_shadow_root_delegates_focus_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.shadowRootDelegatesFocus"

///|
impl THTMLTemplateElement with shadow_root_delegates_focus(self : Self) -> Bool {
  html_template_element_shadow_root_delegates_focus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_template_element_set_shadow_root_delegates_focus_ffi(
  obj : JsValue,
  shadow_root_delegates_focus : JsValue,
) -> Unit = "(obj, shadowRootDelegatesFocus) => { obj.shadowRootDelegatesFocus = shadowRootDelegatesFocus; }"

///|
impl THTMLTemplateElement with set_shadow_root_delegates_focus(
  self : Self,
  shadow_root_delegates_focus : Bool,
) -> Unit {
  html_template_element_set_shadow_root_delegates_focus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_root_delegates_focus),
  )
}

///|
extern "js" fn html_template_element_shadow_root_clonable_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.shadowRootClonable"

///|
impl THTMLTemplateElement with shadow_root_clonable(self : Self) -> Bool {
  html_template_element_shadow_root_clonable_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_template_element_set_shadow_root_clonable_ffi(
  obj : JsValue,
  shadow_root_clonable : JsValue,
) -> Unit = "(obj, shadowRootClonable) => { obj.shadowRootClonable = shadowRootClonable; }"

///|
impl THTMLTemplateElement with set_shadow_root_clonable(
  self : Self,
  shadow_root_clonable : Bool,
) -> Unit {
  html_template_element_set_shadow_root_clonable_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_root_clonable),
  )
}

///|
extern "js" fn html_template_element_shadow_root_serializable_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.shadowRootSerializable"

///|
impl THTMLTemplateElement with shadow_root_serializable(self : Self) -> Bool {
  html_template_element_shadow_root_serializable_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_template_element_set_shadow_root_serializable_ffi(
  obj : JsValue,
  shadow_root_serializable : JsValue,
) -> Unit = "(obj, shadowRootSerializable) => { obj.shadowRootSerializable = shadowRootSerializable; }"

///|
impl THTMLTemplateElement with set_shadow_root_serializable(
  self : Self,
  shadow_root_serializable : Bool,
) -> Unit {
  html_template_element_set_shadow_root_serializable_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_root_serializable),
  )
}

///|
extern "js" fn html_template_element_shadow_root_custom_element_registry_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.shadowRootCustomElementRegistry"

///|
impl THTMLTemplateElement with shadow_root_custom_element_registry(self : Self) -> String {
  html_template_element_shadow_root_custom_element_registry_ffi(
    TJsValue::to_js(self),
  )
}

///|
extern "js" fn html_template_element_set_shadow_root_custom_element_registry_ffi(
  obj : JsValue,
  shadow_root_custom_element_registry : JsValue,
) -> Unit = "(obj, shadowRootCustomElementRegistry) => { obj.shadowRootCustomElementRegistry = shadowRootCustomElementRegistry; }"

///|
impl THTMLTemplateElement with set_shadow_root_custom_element_registry(
  self : Self,
  shadow_root_custom_element_registry : String,
) -> Unit {
  html_template_element_set_shadow_root_custom_element_registry_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_root_custom_element_registry),
  )
}
