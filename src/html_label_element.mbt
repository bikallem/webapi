// Auto-generated MoonBit bindings for HTMLLabelElement interface
// Do not edit manually

#external
pub type HTMLLabelElement

pub impl TJsValue for HTMLLabelElement with to_js(self: HTMLLabelElement) -> JsValue = "%identity"


pub fn[T: THTMLLabelElement] HTMLLabelElement::into(self : HTMLLabelElement) -> T = "%identity"
pub impl THTMLLabelElement for HTMLLabelElement

pub fn HTMLLabelElement::new() -> HTMLLabelElement = "webapi_HTMLLabelElement" "new"

pub trait THTMLLabelElement: TJsValue + TTHTMLElement {
  form(self: Self) -> &THTMLFormElement = _
  html_for(self: Self) -> String = _
  set_html_for(self: Self, value : String) -> Unit = _
  control(self: Self) -> &THTMLElement = _
}

///|
fn html_label_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLabelElement" "form"

///|
impl THTMLLabelElement with form(self : Self) -> &THTMLFormElement {
  html_label_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_label_element_html_for_ffi(obj : JsValue) -> String = "webapi_HTMLLabelElement" "htmlFor"

///|
impl THTMLLabelElement with html_for(self : Self) -> String {
  html_label_element_html_for_ffi(self.to_js())
}

///|
fn html_label_element_set_html_for_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLabelElement" "set_htmlFor"

///|
impl THTMLLabelElement with set_html_for(self : Self, value : String) -> Unit {
  html_label_element_set_html_for_ffi(self.to_js(), value)
}

///|
fn html_label_element_control_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLabelElement" "control"

///|
impl THTMLLabelElement with control(self : Self) -> &THTMLElement {
  html_label_element_control_ffi(self.to_js()).unsafe_cast()
}