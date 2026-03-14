// Do not edit. This file is generated.
// MoonBit type: HTMLTemplateElement
// Specifications: html.idl

/// [HTMLTemplateElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement)
#external
pub type HTMLTemplateElement

pub impl TJsValue for HTMLTemplateElement with to_js(self: HTMLTemplateElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLTemplateElement with from_js_any(value : JsAny) -> HTMLTemplateElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLTemplateElement] HTMLTemplateElement::into(self : HTMLTemplateElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLTemplateElement] HTMLTemplateElement::unsafe_into(self : HTMLTemplateElement) -> T = "%identity"

pub impl HasConstructor for HTMLTemplateElement with constructor_name() { "HTMLTemplateElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLTemplateElement + HasConstructor] HTMLTemplateElement::try_into(self : HTMLTemplateElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLTemplateElement for HTMLTemplateElement

pub impl THTMLElement for HTMLTemplateElement

pub impl TElement for HTMLTemplateElement

pub impl TNode for HTMLTemplateElement

pub impl TEventTarget for HTMLTemplateElement

pub fn HTMLTemplateElement::new() -> HTMLTemplateElement {
  html_template_element_new_ffi()
}

/// [HTMLTemplateElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement) interface.
pub trait THTMLTemplateElement: THTMLElement {
  content(self : Self) -> DocumentFragment = _
  shadow_root_mode(self : Self) -> String = _
  set_shadow_root_mode(self : Self, shadow_root_mode : String) -> Unit = _
  shadow_root_delegates_focus(self : Self) -> Bool = _
  set_shadow_root_delegates_focus(self : Self, shadow_root_delegates_focus : Bool) -> Unit = _
  shadow_root_clonable(self : Self) -> Bool = _
  set_shadow_root_clonable(self : Self, shadow_root_clonable : Bool) -> Unit = _
  shadow_root_serializable(self : Self) -> Bool = _
  set_shadow_root_serializable(self : Self, shadow_root_serializable : Bool) -> Unit = _
  shadow_root_custom_element_registry(self : Self) -> String = _
  set_shadow_root_custom_element_registry(self : Self, shadow_root_custom_element_registry : String) -> Unit = _
}

/// [HTMLTemplateElement.content](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/content)
impl THTMLTemplateElement with content(self : Self) -> DocumentFragment {
  html_template_element_content_ffi(TJsValue::to_js(self))
}

/// [HTMLTemplateElement.shadowRootMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootMode)
impl THTMLTemplateElement with shadow_root_mode(self : Self) -> String {
  html_template_element_shadow_root_mode_ffi(TJsValue::to_js(self))
}

/// [HTMLTemplateElement.shadowRootMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootMode)
impl THTMLTemplateElement with set_shadow_root_mode(self : Self, 
shadow_root_mode : String) -> Unit {
  html_template_element_set_shadow_root_mode_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_root_mode))
}

/// [HTMLTemplateElement.shadowRootDelegatesFocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootDelegatesFocus)
impl THTMLTemplateElement with shadow_root_delegates_focus(self : Self) -> Bool {
  html_template_element_shadow_root_delegates_focus_ffi(TJsValue::to_js(self))
}

/// [HTMLTemplateElement.shadowRootDelegatesFocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootDelegatesFocus)
impl THTMLTemplateElement with set_shadow_root_delegates_focus(self : Self, 
shadow_root_delegates_focus : Bool) -> Unit {
  html_template_element_set_shadow_root_delegates_focus_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_root_delegates_focus))
}

/// [HTMLTemplateElement.shadowRootClonable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootClonable)
impl THTMLTemplateElement with shadow_root_clonable(self : Self) -> Bool {
  html_template_element_shadow_root_clonable_ffi(TJsValue::to_js(self))
}

/// [HTMLTemplateElement.shadowRootClonable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootClonable)
impl THTMLTemplateElement with set_shadow_root_clonable(self : Self, 
shadow_root_clonable : Bool) -> Unit {
  html_template_element_set_shadow_root_clonable_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_root_clonable))
}

/// [HTMLTemplateElement.shadowRootSerializable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootSerializable)
impl THTMLTemplateElement with shadow_root_serializable(self : Self) -> Bool {
  html_template_element_shadow_root_serializable_ffi(TJsValue::to_js(self))
}

/// [HTMLTemplateElement.shadowRootSerializable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootSerializable)
impl THTMLTemplateElement with set_shadow_root_serializable(self : Self, 
shadow_root_serializable : Bool) -> Unit {
  html_template_element_set_shadow_root_serializable_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_root_serializable))
}

/// [HTMLTemplateElement.shadowRootCustomElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootCustomElementRegistry)
impl THTMLTemplateElement with shadow_root_custom_element_registry(self : Self) -> String {
  html_template_element_shadow_root_custom_element_registry_ffi(TJsValue::to_js(self))
}

/// [HTMLTemplateElement.shadowRootCustomElementRegistry](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement/shadowRootCustomElementRegistry)
impl THTMLTemplateElement with set_shadow_root_custom_element_registry(self : Self, 
shadow_root_custom_element_registry : String) -> Unit {
  html_template_element_set_shadow_root_custom_element_registry_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_root_custom_element_registry))
}

#cfg(target="js")
extern "js" fn html_template_element_new_ffi() -> HTMLTemplateElement = "() => new HTMLTemplateElement()"

#cfg(target="js")
extern "js" fn html_template_element_content_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.content"

///|
#cfg(target="js")
fn html_template_element_content_ffi(obj: JsValue) -> DocumentFragment {
  html_template_element_content_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_template_element_shadow_root_mode_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootMode"

///|
#cfg(target="js")
fn html_template_element_shadow_root_mode_ffi(obj: JsValue) -> String {
  html_template_element_shadow_root_mode_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_template_element_set_shadow_root_mode_ffi(obj: JsValue, shadow_root_mode: JsValue) -> Unit = "(obj, shadowRootMode) => { obj.shadowRootMode = shadowRootMode; }"

#cfg(target="js")
extern "js" fn html_template_element_shadow_root_delegates_focus_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootDelegatesFocus"

///|
#cfg(target="js")
fn html_template_element_shadow_root_delegates_focus_ffi(obj: JsValue) -> Bool {
  html_template_element_shadow_root_delegates_focus_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_template_element_set_shadow_root_delegates_focus_ffi(obj: JsValue, shadow_root_delegates_focus: JsValue) -> Unit = "(obj, shadowRootDelegatesFocus) => { obj.shadowRootDelegatesFocus = shadowRootDelegatesFocus; }"

#cfg(target="js")
extern "js" fn html_template_element_shadow_root_clonable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootClonable"

///|
#cfg(target="js")
fn html_template_element_shadow_root_clonable_ffi(obj: JsValue) -> Bool {
  html_template_element_shadow_root_clonable_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_template_element_set_shadow_root_clonable_ffi(obj: JsValue, shadow_root_clonable: JsValue) -> Unit = "(obj, shadowRootClonable) => { obj.shadowRootClonable = shadowRootClonable; }"

#cfg(target="js")
extern "js" fn html_template_element_shadow_root_serializable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootSerializable"

///|
#cfg(target="js")
fn html_template_element_shadow_root_serializable_ffi(obj: JsValue) -> Bool {
  html_template_element_shadow_root_serializable_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_template_element_set_shadow_root_serializable_ffi(obj: JsValue, shadow_root_serializable: JsValue) -> Unit = "(obj, shadowRootSerializable) => { obj.shadowRootSerializable = shadowRootSerializable; }"

#cfg(target="js")
extern "js" fn html_template_element_shadow_root_custom_element_registry_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootCustomElementRegistry"

///|
#cfg(target="js")
fn html_template_element_shadow_root_custom_element_registry_ffi(obj: JsValue) -> String {
  html_template_element_shadow_root_custom_element_registry_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_template_element_set_shadow_root_custom_element_registry_ffi(obj: JsValue, shadow_root_custom_element_registry: JsValue) -> Unit = "(obj, shadowRootCustomElementRegistry) => { obj.shadowRootCustomElementRegistry = shadowRootCustomElementRegistry; }"

#cfg(target="wasm-gc")
fn html_template_element_new_ffi() -> HTMLTemplateElement = "webapi_HTMLTemplateElement" "new"

#cfg(target="wasm-gc")
fn html_template_element_content_ffi(obj: JsValue) -> DocumentFragment = "webapi_HTMLTemplateElement" "get_content"

#cfg(target="wasm-gc")
fn html_template_element_shadow_root_mode_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTemplateElement" "get_shadowRootMode"

///|
#cfg(target="wasm-gc")
fn html_template_element_shadow_root_mode_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_template_element_shadow_root_mode_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_template_element_set_shadow_root_mode_ffi(obj: JsValue, shadow_root_mode: JsValue) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootMode"

#cfg(target="wasm-gc")
fn html_template_element_shadow_root_delegates_focus_ffi(obj: JsValue) -> Bool = "webapi_HTMLTemplateElement" "get_shadowRootDelegatesFocus"

#cfg(target="wasm-gc")
fn html_template_element_set_shadow_root_delegates_focus_ffi(obj: JsValue, shadow_root_delegates_focus: JsValue) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootDelegatesFocus"

#cfg(target="wasm-gc")
fn html_template_element_shadow_root_clonable_ffi(obj: JsValue) -> Bool = "webapi_HTMLTemplateElement" "get_shadowRootClonable"

#cfg(target="wasm-gc")
fn html_template_element_set_shadow_root_clonable_ffi(obj: JsValue, shadow_root_clonable: JsValue) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootClonable"

#cfg(target="wasm-gc")
fn html_template_element_shadow_root_serializable_ffi(obj: JsValue) -> Bool = "webapi_HTMLTemplateElement" "get_shadowRootSerializable"

#cfg(target="wasm-gc")
fn html_template_element_set_shadow_root_serializable_ffi(obj: JsValue, shadow_root_serializable: JsValue) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootSerializable"

#cfg(target="wasm-gc")
fn html_template_element_shadow_root_custom_element_registry_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTemplateElement" "get_shadowRootCustomElementRegistry"

///|
#cfg(target="wasm-gc")
fn html_template_element_shadow_root_custom_element_registry_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_template_element_shadow_root_custom_element_registry_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_template_element_set_shadow_root_custom_element_registry_ffi(obj: JsValue, shadow_root_custom_element_registry: JsValue) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootCustomElementRegistry"