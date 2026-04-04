// Do not edit. This file is generated.
// MoonBit type: HTMLFieldSetElement
// Specifications: html.idl

///|
/// [HTMLFieldSetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement)
#external
pub type HTMLFieldSetElement

///|
pub impl TJsValue for HTMLFieldSetElement with to_js(self : HTMLFieldSetElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLFieldSetElement with from_js_any(value : JsAny) -> HTMLFieldSetElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLFieldSetElement] HTMLFieldSetElement::into(
  self : HTMLFieldSetElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLFieldSetElement] HTMLFieldSetElement::unsafe_into(
  self : HTMLFieldSetElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLFieldSetElement with constructor_name() {
  "HTMLFieldSetElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLFieldSetElement + HasConstructor] HTMLFieldSetElement::try_into(
  self : HTMLFieldSetElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLFieldSetElement for HTMLFieldSetElement

///|
pub impl THTMLElement for HTMLFieldSetElement

///|
pub impl TElement for HTMLFieldSetElement

///|
pub impl TNode for HTMLFieldSetElement

///|
pub impl TEventTarget for HTMLFieldSetElement

///|
pub fn HTMLFieldSetElement::new() -> HTMLFieldSetElement {
  html_field_set_element_new_ffi()
}

///|
/// [HTMLFieldSetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement) interface.
pub trait THTMLFieldSetElement: THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  type_(self : Self) -> String = _
  elements(self : Self) -> HTMLCollection = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
}

///|
/// [HTMLFieldSetElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/disabled)
impl THTMLFieldSetElement with disabled(self : Self) -> Bool {
  html_field_set_element_disabled_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/disabled)
impl THTMLFieldSetElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_field_set_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
/// [HTMLFieldSetElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/form)
impl THTMLFieldSetElement with form(self : Self) -> HTMLFormElement {
  html_field_set_element_form_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/name)
impl THTMLFieldSetElement with name(self : Self) -> String {
  html_field_set_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/name)
impl THTMLFieldSetElement with set_name(self : Self, name : String) -> Unit {
  html_field_set_element_set_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
/// [HTMLFieldSetElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/type)
impl THTMLFieldSetElement with type_(self : Self) -> String {
  html_field_set_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.elements](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/elements)
impl THTMLFieldSetElement with elements(self : Self) -> HTMLCollection {
  html_field_set_element_elements_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/willValidate)
impl THTMLFieldSetElement with will_validate(self : Self) -> Bool {
  html_field_set_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/validity)
impl THTMLFieldSetElement with validity(self : Self) -> ValidityState {
  html_field_set_element_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/validationMessage)
impl THTMLFieldSetElement with validation_message(self : Self) -> String {
  html_field_set_element_validation_message_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/checkValidity)
impl THTMLFieldSetElement with check_validity(self : Self) -> Bool {
  html_field_set_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/reportValidity)
impl THTMLFieldSetElement with report_validity(self : Self) -> Bool {
  html_field_set_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFieldSetElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement/setCustomValidity)
impl THTMLFieldSetElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_field_set_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_new_ffi() -> HTMLFieldSetElement = "() => new HTMLFieldSetElement()"

///|
#cfg(target="js")
extern "js" fn html_field_set_element_disabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_field_set_element_disabled_ffi(obj : JsValue) -> Bool {
  html_field_set_element_disabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
#cfg(target="js")
extern "js" fn html_field_set_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_field_set_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_field_set_element_form_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_field_set_element_name_ffi(obj : JsValue) -> String {
  html_field_set_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_field_set_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_field_set_element_type_ffi(obj : JsValue) -> String {
  html_field_set_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_elements_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.elements"

///|
#cfg(target="js")
fn html_field_set_element_elements_ffi(obj : JsValue) -> HTMLCollection {
  html_field_set_element_elements_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_will_validate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.willValidate"

///|
#cfg(target="js")
fn html_field_set_element_will_validate_ffi(obj : JsValue) -> Bool {
  html_field_set_element_will_validate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_validity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
#cfg(target="js")
fn html_field_set_element_validity_ffi(obj : JsValue) -> ValidityState {
  html_field_set_element_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_validation_message_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
#cfg(target="js")
fn html_field_set_element_validation_message_ffi(obj : JsValue) -> String {
  html_field_set_element_validation_message_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_check_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_field_set_element_check_validity_ffi(obj : JsValue) -> Bool {
  html_field_set_element_check_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_report_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_field_set_element_report_validity_ffi(obj : JsValue) -> Bool {
  html_field_set_element_report_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_field_set_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_new_ffi() -> HTMLFieldSetElement = "webapi_HTMLFieldSetElement" "new"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "get_disabled"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "webapi_HTMLFieldSetElement" "set_disabled"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLFieldSetElement" "get_form"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_field_set_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_field_set_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLFieldSetElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_field_set_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_field_set_element_elements_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLFieldSetElement" "get_elements"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "get_willValidate"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_validity_ffi(obj : JsValue) -> ValidityState = "webapi_HTMLFieldSetElement" "get_validity"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_validation_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "get_validationMessage"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_validation_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_field_set_element_validation_message_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_field_set_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "checkValidity"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "reportValidity"

///|
#cfg(target="wasm-gc")
fn html_field_set_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLFieldSetElement" "setCustomValidity"
