// Do not edit. This file is generated.
// MoonBit type: HTMLOutputElement
// Specifications: html.idl

/// [HTMLOutputElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement)
#external
pub type HTMLOutputElement

pub impl TJsValue for HTMLOutputElement with to_js(self: HTMLOutputElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLOutputElement with from_js_any(value : JsAny) -> HTMLOutputElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLOutputElement] HTMLOutputElement::into(self : HTMLOutputElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLOutputElement] HTMLOutputElement::unsafe_into(self : HTMLOutputElement) -> T = "%identity"

pub impl HasConstructor for HTMLOutputElement with constructor_name() { "HTMLOutputElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLOutputElement + HasConstructor] HTMLOutputElement::try_into(self : HTMLOutputElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLOutputElement for HTMLOutputElement

pub impl THTMLElement for HTMLOutputElement

pub impl TElement for HTMLOutputElement

pub impl TNode for HTMLOutputElement

pub impl TEventTarget for HTMLOutputElement

pub fn HTMLOutputElement::new() -> HTMLOutputElement {
  html_output_element_new_ffi()
}

/// [HTMLOutputElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement) interface.
pub trait THTMLOutputElement: THTMLElement {
  html_for(self : Self) -> DOMTokenList = _
  form(self : Self) -> HTMLFormElement = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  type_(self : Self) -> String = _
  default_value(self : Self) -> String = _
  set_default_value(self : Self, default_value : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  labels(self : Self) -> NodeList = _
}

/// [HTMLOutputElement.htmlFor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/htmlFor)
impl THTMLOutputElement with html_for(self : Self) -> DOMTokenList {
  html_output_element_html_for_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/form)
impl THTMLOutputElement with form(self : Self) -> HTMLFormElement {
  html_output_element_form_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/name)
impl THTMLOutputElement with name(self : Self) -> String {
  html_output_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/name)
impl THTMLOutputElement with set_name(self : Self, 
name : String) -> Unit {
  html_output_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLOutputElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/type)
impl THTMLOutputElement with type_(self : Self) -> String {
  html_output_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/defaultValue)
impl THTMLOutputElement with default_value(self : Self) -> String {
  html_output_element_default_value_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/defaultValue)
impl THTMLOutputElement with set_default_value(self : Self, 
default_value : String) -> Unit {
  html_output_element_set_default_value_ffi(TJsValue::to_js(self), TJsValue::to_js(default_value))
}

/// [HTMLOutputElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/value)
impl THTMLOutputElement with value(self : Self) -> String {
  html_output_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/value)
impl THTMLOutputElement with set_value(self : Self, 
value : String) -> Unit {
  html_output_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLOutputElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/willValidate)
impl THTMLOutputElement with will_validate(self : Self) -> Bool {
  html_output_element_will_validate_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/validity)
impl THTMLOutputElement with validity(self : Self) -> ValidityState {
  html_output_element_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/validationMessage)
impl THTMLOutputElement with validation_message(self : Self) -> String {
  html_output_element_validation_message_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/checkValidity)
impl THTMLOutputElement with check_validity(self : Self) -> Bool {
  html_output_element_check_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/reportValidity)
impl THTMLOutputElement with report_validity(self : Self) -> Bool {
  html_output_element_report_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLOutputElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/setCustomValidity)
impl THTMLOutputElement with set_custom_validity(self : Self, 
error : String) -> Unit {
  html_output_element_set_custom_validity_ffi(TJsValue::to_js(self), TJsValue::to_js(error))
}

/// [HTMLOutputElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/labels)
impl THTMLOutputElement with labels(self : Self) -> NodeList {
  html_output_element_labels_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn html_output_element_new_ffi() -> HTMLOutputElement = "() => new HTMLOutputElement()"

#cfg(target="js")
extern "js" fn html_output_element_html_for_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.htmlFor"

///|
#cfg(target="js")
fn html_output_element_html_for_ffi(obj: JsValue) -> DOMTokenList {
  html_output_element_html_for_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_output_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_output_element_form_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_output_element_name_ffi(obj: JsValue) -> String {
  html_output_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="js")
extern "js" fn html_output_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_output_element_type_ffi(obj: JsValue) -> String {
  html_output_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_default_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultValue"

///|
#cfg(target="js")
fn html_output_element_default_value_ffi(obj: JsValue) -> String {
  html_output_element_default_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

#cfg(target="js")
extern "js" fn html_output_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_output_element_value_ffi(obj: JsValue) -> String {
  html_output_element_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="js")
extern "js" fn html_output_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
#cfg(target="js")
fn html_output_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_output_element_will_validate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
#cfg(target="js")
fn html_output_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_output_element_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
#cfg(target="js")
fn html_output_element_validation_message_ffi(obj: JsValue) -> String {
  html_output_element_validation_message_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_output_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_output_element_check_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_output_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_output_element_report_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_output_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

#cfg(target="js")
extern "js" fn html_output_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
#cfg(target="js")
fn html_output_element_labels_ffi(obj: JsValue) -> NodeList {
  html_output_element_labels_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn html_output_element_new_ffi() -> HTMLOutputElement = "webapi_HTMLOutputElement" "new"

#cfg(target="wasm-gc")
fn html_output_element_html_for_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLOutputElement" "get_htmlFor"

#cfg(target="wasm-gc")
fn html_output_element_form_ffi(obj: JsValue) -> HTMLFormElement = "webapi_HTMLOutputElement" "get_form"

#cfg(target="wasm-gc")
fn html_output_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_output_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_output_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLOutputElement" "set_name"

#cfg(target="wasm-gc")
fn html_output_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_output_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_output_element_default_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_defaultValue"

///|
#cfg(target="wasm-gc")
fn html_output_element_default_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_default_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_output_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "webapi_HTMLOutputElement" "set_defaultValue"

#cfg(target="wasm-gc")
fn html_output_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_output_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_output_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLOutputElement" "set_value"

#cfg(target="wasm-gc")
fn html_output_element_will_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLOutputElement" "get_willValidate"

#cfg(target="wasm-gc")
fn html_output_element_validity_ffi(obj: JsValue) -> ValidityState = "webapi_HTMLOutputElement" "get_validity"

#cfg(target="wasm-gc")
fn html_output_element_validation_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_validationMessage"

///|
#cfg(target="wasm-gc")
fn html_output_element_validation_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_validation_message_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_output_element_check_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLOutputElement" "checkValidity"

#cfg(target="wasm-gc")
fn html_output_element_report_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLOutputElement" "reportValidity"

#cfg(target="wasm-gc")
fn html_output_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "webapi_HTMLOutputElement" "setCustomValidity"

#cfg(target="wasm-gc")
fn html_output_element_labels_ffi(obj: JsValue) -> NodeList = "webapi_HTMLOutputElement" "get_labels"