// Do not edit. This file is generated.
// MoonBit type: HTMLOptionElement
// Specifications: html.idl

/// [HTMLOptionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement)
#external
pub type HTMLOptionElement

pub impl TJsValue for HTMLOptionElement with to_js(self: HTMLOptionElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLOptionElement with from_js_any(value : JsAny) -> HTMLOptionElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLOptionElement] HTMLOptionElement::into(self : HTMLOptionElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLOptionElement] HTMLOptionElement::unsafe_into(self : HTMLOptionElement) -> T = "%identity"

pub impl HasConstructor for HTMLOptionElement with constructor_name() { "HTMLOptionElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLOptionElement + HasConstructor] HTMLOptionElement::try_into(self : HTMLOptionElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLOptionElement for HTMLOptionElement

pub impl THTMLElement for HTMLOptionElement

pub impl TElement for HTMLOptionElement

pub impl TNode for HTMLOptionElement

pub impl TEventTarget for HTMLOptionElement

pub fn HTMLOptionElement::new() -> HTMLOptionElement {
  html_option_element_new_ffi()
}

/// [HTMLOptionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement) interface.
pub trait THTMLOptionElement: THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  label(self : Self) -> String = _
  set_label(self : Self, label : String) -> Unit = _
  default_selected(self : Self) -> Bool = _
  set_default_selected(self : Self, default_selected : Bool) -> Unit = _
  selected(self : Self) -> Bool = _
  set_selected(self : Self, selected : Bool) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  text(self : Self) -> String = _
  set_text(self : Self, text : String) -> Unit = _
  index(self : Self) -> Int = _
}

/// [HTMLOptionElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/disabled)
impl THTMLOptionElement with disabled(self : Self) -> Bool {
  html_option_element_disabled_ffi(TJsValue::to_js(self))
}

/// [HTMLOptionElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/disabled)
impl THTMLOptionElement with set_disabled(self : Self, 
disabled : Bool) -> Unit {
  html_option_element_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

/// [HTMLOptionElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/form)
impl THTMLOptionElement with form(self : Self) -> HTMLFormElement {
  html_option_element_form_ffi(TJsValue::to_js(self))
}

/// [HTMLOptionElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/label)
impl THTMLOptionElement with label(self : Self) -> String {
  html_option_element_label_ffi(TJsValue::to_js(self))
}

/// [HTMLOptionElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/label)
impl THTMLOptionElement with set_label(self : Self, 
label : String) -> Unit {
  html_option_element_set_label_ffi(TJsValue::to_js(self), TJsValue::to_js(label))
}

/// [HTMLOptionElement.defaultSelected](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/defaultSelected)
impl THTMLOptionElement with default_selected(self : Self) -> Bool {
  html_option_element_default_selected_ffi(TJsValue::to_js(self))
}

/// [HTMLOptionElement.defaultSelected](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/defaultSelected)
impl THTMLOptionElement with set_default_selected(self : Self, 
default_selected : Bool) -> Unit {
  html_option_element_set_default_selected_ffi(TJsValue::to_js(self), TJsValue::to_js(default_selected))
}

/// [HTMLOptionElement.selected](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/selected)
impl THTMLOptionElement with selected(self : Self) -> Bool {
  html_option_element_selected_ffi(TJsValue::to_js(self))
}

/// [HTMLOptionElement.selected](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/selected)
impl THTMLOptionElement with set_selected(self : Self, 
selected : Bool) -> Unit {
  html_option_element_set_selected_ffi(TJsValue::to_js(self), TJsValue::to_js(selected))
}

/// [HTMLOptionElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/value)
impl THTMLOptionElement with value(self : Self) -> String {
  html_option_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLOptionElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/value)
impl THTMLOptionElement with set_value(self : Self, 
value : String) -> Unit {
  html_option_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLOptionElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/text)
impl THTMLOptionElement with text(self : Self) -> String {
  html_option_element_text_ffi(TJsValue::to_js(self))
}

/// [HTMLOptionElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/text)
impl THTMLOptionElement with set_text(self : Self, 
text : String) -> Unit {
  html_option_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

/// [HTMLOptionElement.index](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement/index)
impl THTMLOptionElement with index(self : Self) -> Int {
  html_option_element_index_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn html_option_element_new_ffi() -> HTMLOptionElement = "() => new HTMLOptionElement()"

#cfg(target="js")
extern "js" fn html_option_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_option_element_disabled_ffi(obj: JsValue) -> Bool {
  html_option_element_disabled_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_option_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

#cfg(target="js")
extern "js" fn html_option_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_option_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_option_element_form_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_option_element_label_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.label"

///|
#cfg(target="js")
fn html_option_element_label_ffi(obj: JsValue) -> String {
  html_option_element_label_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_option_element_set_label_ffi(obj: JsValue, label: JsValue) -> Unit = "(obj, label) => { obj.label = label; }"

#cfg(target="js")
extern "js" fn html_option_element_default_selected_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultSelected"

///|
#cfg(target="js")
fn html_option_element_default_selected_ffi(obj: JsValue) -> Bool {
  html_option_element_default_selected_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_option_element_set_default_selected_ffi(obj: JsValue, default_selected: JsValue) -> Unit = "(obj, defaultSelected) => { obj.defaultSelected = defaultSelected; }"

#cfg(target="js")
extern "js" fn html_option_element_selected_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selected"

///|
#cfg(target="js")
fn html_option_element_selected_ffi(obj: JsValue) -> Bool {
  html_option_element_selected_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_option_element_set_selected_ffi(obj: JsValue, selected: JsValue) -> Unit = "(obj, selected) => { obj.selected = selected; }"

#cfg(target="js")
extern "js" fn html_option_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_option_element_value_ffi(obj: JsValue) -> String {
  html_option_element_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_option_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="js")
extern "js" fn html_option_element_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.text"

///|
#cfg(target="js")
fn html_option_element_text_ffi(obj: JsValue) -> String {
  html_option_element_text_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_option_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "(obj, text) => { obj.text = text; }"

#cfg(target="js")
extern "js" fn html_option_element_index_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.index"

///|
#cfg(target="js")
fn html_option_element_index_ffi(obj: JsValue) -> Int {
  html_option_element_index_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn html_option_element_new_ffi() -> HTMLOptionElement = "webapi_HTMLOptionElement" "new"

#cfg(target="wasm-gc")
fn html_option_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_HTMLOptionElement" "get_disabled"

#cfg(target="wasm-gc")
fn html_option_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_HTMLOptionElement" "set_disabled"

#cfg(target="wasm-gc")
fn html_option_element_form_ffi(obj: JsValue) -> HTMLFormElement = "webapi_HTMLOptionElement" "get_form"

#cfg(target="wasm-gc")
fn html_option_element_label_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOptionElement" "get_label"

///|
#cfg(target="wasm-gc")
fn html_option_element_label_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_option_element_label_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_option_element_set_label_ffi(obj: JsValue, label: JsValue) -> Unit = "webapi_HTMLOptionElement" "set_label"

#cfg(target="wasm-gc")
fn html_option_element_default_selected_ffi(obj: JsValue) -> Bool = "webapi_HTMLOptionElement" "get_defaultSelected"

#cfg(target="wasm-gc")
fn html_option_element_set_default_selected_ffi(obj: JsValue, default_selected: JsValue) -> Unit = "webapi_HTMLOptionElement" "set_defaultSelected"

#cfg(target="wasm-gc")
fn html_option_element_selected_ffi(obj: JsValue) -> Bool = "webapi_HTMLOptionElement" "get_selected"

#cfg(target="wasm-gc")
fn html_option_element_set_selected_ffi(obj: JsValue, selected: JsValue) -> Unit = "webapi_HTMLOptionElement" "set_selected"

#cfg(target="wasm-gc")
fn html_option_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOptionElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_option_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_option_element_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_option_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLOptionElement" "set_value"

#cfg(target="wasm-gc")
fn html_option_element_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOptionElement" "get_text"

///|
#cfg(target="wasm-gc")
fn html_option_element_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_option_element_text_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_option_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "webapi_HTMLOptionElement" "set_text"

#cfg(target="wasm-gc")
fn html_option_element_index_ffi(obj: JsValue) -> Int = "webapi_HTMLOptionElement" "get_index"