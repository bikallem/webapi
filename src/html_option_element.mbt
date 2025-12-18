// Auto-generated MoonBit bindings for HTMLOptionElement interface
// Do not edit manually

#external
pub type HTMLOptionElement

pub impl TJsValue for HTMLOptionElement with to_js(self: HTMLOptionElement) -> JsValue = "%identity"


pub fn[T: THTMLOptionElement] HTMLOptionElement::into(self : HTMLOptionElement) -> T = "%identity"
pub impl THTMLOptionElement for HTMLOptionElement

pub fn HTMLOptionElement::new() -> HTMLOptionElement = "webapi_HTMLOptionElement" "new"

pub trait THTMLOptionElement: TJsValue + TTHTMLElement {
  disabled(self: Self) -> Bool = _
  set_disabled(self: Self, value : Bool) -> Unit = _
  form(self: Self) -> &THTMLFormElement = _
  label(self: Self) -> String = _
  set_label(self: Self, value : String) -> Unit = _
  default_selected(self: Self) -> Bool = _
  set_default_selected(self: Self, value : Bool) -> Unit = _
  selected(self: Self) -> Bool = _
  set_selected(self: Self, value : Bool) -> Unit = _
  value(self: Self) -> String = _
  set_value(self: Self, value : String) -> Unit = _
  text(self: Self) -> String = _
  set_text(self: Self, value : String) -> Unit = _
  index(self: Self) -> Int = _
}

///|
fn html_option_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLOptionElement" "disabled"

///|
impl THTMLOptionElement with disabled(self : Self) -> Bool {
  html_option_element_disabled_ffi(self.to_js())
}

///|
fn html_option_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLOptionElement" "set_disabled"

///|
impl THTMLOptionElement with set_disabled(self : Self, value : Bool) -> Unit {
  html_option_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn html_option_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLOptionElement" "form"

///|
impl THTMLOptionElement with form(self : Self) -> &THTMLFormElement {
  html_option_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_option_element_label_ffi(obj : JsValue) -> String = "webapi_HTMLOptionElement" "label"

///|
impl THTMLOptionElement with label(self : Self) -> String {
  html_option_element_label_ffi(self.to_js())
}

///|
fn html_option_element_set_label_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOptionElement" "set_label"

///|
impl THTMLOptionElement with set_label(self : Self, value : String) -> Unit {
  html_option_element_set_label_ffi(self.to_js(), value)
}

///|
fn html_option_element_default_selected_ffi(obj : JsValue) -> Bool = "webapi_HTMLOptionElement" "defaultSelected"

///|
impl THTMLOptionElement with default_selected(self : Self) -> Bool {
  html_option_element_default_selected_ffi(self.to_js())
}

///|
fn html_option_element_set_default_selected_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLOptionElement" "set_defaultSelected"

///|
impl THTMLOptionElement with set_default_selected(self : Self, value : Bool) -> Unit {
  html_option_element_set_default_selected_ffi(self.to_js(), value)
}

///|
fn html_option_element_selected_ffi(obj : JsValue) -> Bool = "webapi_HTMLOptionElement" "selected"

///|
impl THTMLOptionElement with selected(self : Self) -> Bool {
  html_option_element_selected_ffi(self.to_js())
}

///|
fn html_option_element_set_selected_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLOptionElement" "set_selected"

///|
impl THTMLOptionElement with set_selected(self : Self, value : Bool) -> Unit {
  html_option_element_set_selected_ffi(self.to_js(), value)
}

///|
fn html_option_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLOptionElement" "value"

///|
impl THTMLOptionElement with value(self : Self) -> String {
  html_option_element_value_ffi(self.to_js())
}

///|
fn html_option_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOptionElement" "set_value"

///|
impl THTMLOptionElement with set_value(self : Self, value : String) -> Unit {
  html_option_element_set_value_ffi(self.to_js(), value)
}

///|
fn html_option_element_text_ffi(obj : JsValue) -> String = "webapi_HTMLOptionElement" "text"

///|
impl THTMLOptionElement with text(self : Self) -> String {
  html_option_element_text_ffi(self.to_js())
}

///|
fn html_option_element_set_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOptionElement" "set_text"

///|
impl THTMLOptionElement with set_text(self : Self, value : String) -> Unit {
  html_option_element_set_text_ffi(self.to_js(), value)
}

///|
fn html_option_element_index_ffi(obj : JsValue) -> Int = "webapi_HTMLOptionElement" "index"

///|
impl THTMLOptionElement with index(self : Self) -> Int {
  html_option_element_index_ffi(self.to_js())
}