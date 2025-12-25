// Do not edit. This file is generated.
// MoonBit type: HTMLOptionElement
// Specifications: html.idl

///|
#external
pub type HTMLOptionElement

///|
pub impl TJsValue for HTMLOptionElement with to_js(self : HTMLOptionElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLOptionElement] HTMLOptionElement::into(
  self : HTMLOptionElement,
) -> T = "%identity"

///|
pub impl THTMLOptionElement for HTMLOptionElement

///|
pub impl THTMLElement for HTMLOptionElement

///|
pub impl TElement for HTMLOptionElement

///|
pub impl TNode for HTMLOptionElement

///|
pub impl TEventTarget for HTMLOptionElement

///|
extern "js" fn html_option_element_new_ffi() -> HTMLOptionElement = "() => new HTMLOptionElement()"

///|
pub fn HTMLOptionElement::new() -> HTMLOptionElement {
  html_option_element_new_ffi()
}

///|
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

///|
extern "js" fn html_option_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLOptionElement with disabled(self : Self) -> Bool {
  html_option_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_option_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLOptionElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_option_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_option_element_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLOptionElement with form(self : Self) -> HTMLFormElement {
  html_option_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_option_element_label_ffi(obj : JsValue) -> String = "(obj) => obj.label"

///|
impl THTMLOptionElement with label(self : Self) -> String {
  html_option_element_label_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_option_element_set_label_ffi(
  obj : JsValue,
  label : JsValue,
) -> Unit = "(obj, label) => { obj.label = label; }"

///|
impl THTMLOptionElement with set_label(self : Self, label : String) -> Unit {
  html_option_element_set_label_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(label),
  )
}

///|
extern "js" fn html_option_element_default_selected_ffi(obj : JsValue) -> Bool = "(obj) => obj.defaultSelected"

///|
impl THTMLOptionElement with default_selected(self : Self) -> Bool {
  html_option_element_default_selected_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_option_element_set_default_selected_ffi(
  obj : JsValue,
  default_selected : JsValue,
) -> Unit = "(obj, defaultSelected) => { obj.defaultSelected = defaultSelected; }"

///|
impl THTMLOptionElement with set_default_selected(
  self : Self,
  default_selected : Bool,
) -> Unit {
  html_option_element_set_default_selected_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(default_selected),
  )
}

///|
extern "js" fn html_option_element_selected_ffi(obj : JsValue) -> Bool = "(obj) => obj.selected"

///|
impl THTMLOptionElement with selected(self : Self) -> Bool {
  html_option_element_selected_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_option_element_set_selected_ffi(
  obj : JsValue,
  selected : JsValue,
) -> Unit = "(obj, selected) => { obj.selected = selected; }"

///|
impl THTMLOptionElement with set_selected(self : Self, selected : Bool) -> Unit {
  html_option_element_set_selected_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selected),
  )
}

///|
extern "js" fn html_option_element_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl THTMLOptionElement with value(self : Self) -> String {
  html_option_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_option_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLOptionElement with set_value(self : Self, value : String) -> Unit {
  html_option_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn html_option_element_text_ffi(obj : JsValue) -> String = "(obj) => obj.text"

///|
impl THTMLOptionElement with text(self : Self) -> String {
  html_option_element_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_option_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
impl THTMLOptionElement with set_text(self : Self, text : String) -> Unit {
  html_option_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
extern "js" fn html_option_element_index_ffi(obj : JsValue) -> Int = "(obj) => obj.index"

///|
impl THTMLOptionElement with index(self : Self) -> Int {
  html_option_element_index_ffi(TJsValue::to_js(self))
}
