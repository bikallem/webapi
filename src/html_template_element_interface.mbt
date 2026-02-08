// Do not edit. This file is generated.
// MoonBit type: HTMLTemplateElement
// Specifications: html.idl

///|
/// [HTMLTemplateElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement)
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
pub fn HTMLTemplateElement::new() -> HTMLTemplateElement {
  html_template_element_new_ffi()
}

///|
/// [HTMLTemplateElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement) interface.
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
/// [HTMLTemplateElement.content](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/content)
impl THTMLTemplateElement with content(self : Self) -> DocumentFragment {
  html_template_element_content_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLTemplateElement.shadowRootMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootMode)
impl THTMLTemplateElement with shadow_root_mode(self : Self) -> String {
  html_template_element_shadow_root_mode_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLTemplateElement.shadowRootMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootMode)
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
/// [HTMLTemplateElement.shadowRootDelegatesFocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootDelegatesFocus)
impl THTMLTemplateElement with shadow_root_delegates_focus(self : Self) -> Bool {
  html_template_element_shadow_root_delegates_focus_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLTemplateElement.shadowRootDelegatesFocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootDelegatesFocus)
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
/// [HTMLTemplateElement.shadowRootClonable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootClonable)
impl THTMLTemplateElement with shadow_root_clonable(self : Self) -> Bool {
  html_template_element_shadow_root_clonable_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLTemplateElement.shadowRootClonable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootClonable)
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
/// [HTMLTemplateElement.shadowRootSerializable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootSerializable)
impl THTMLTemplateElement with shadow_root_serializable(self : Self) -> Bool {
  html_template_element_shadow_root_serializable_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLTemplateElement.shadowRootSerializable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootSerializable)
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
/// [HTMLTemplateElement.shadowRootCustomElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootCustomElementRegistry)
impl THTMLTemplateElement with shadow_root_custom_element_registry(self : Self) -> String {
  html_template_element_shadow_root_custom_element_registry_ffi(
    TJsValue::to_js(self),
  ).unsafe_cast()
}

///|
/// [HTMLTemplateElement.shadowRootCustomElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootCustomElementRegistry)
impl THTMLTemplateElement with set_shadow_root_custom_element_registry(
  self : Self,
  shadow_root_custom_element_registry : String,
) -> Unit {
  html_template_element_set_shadow_root_custom_element_registry_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_root_custom_element_registry),
  )
}
