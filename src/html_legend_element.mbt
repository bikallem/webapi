// Auto-generated MoonBit bindings for HTMLLegendElement interface
// Do not edit manually

#external
pub type HTMLLegendElement

pub impl TJsValue for HTMLLegendElement with to_js(self: HTMLLegendElement) -> JsValue = "%identity"


pub fn[T: THTMLLegendElement] HTMLLegendElement::into(self : HTMLLegendElement) -> T = "%identity"
pub impl THTMLLegendElement for HTMLLegendElement

pub fn HTMLLegendElement::new() -> HTMLLegendElement = "webapi_HTMLLegendElement" "new"

pub trait THTMLLegendElement: TJsValue + TTHTMLElement {
  form(self: Self) -> &THTMLFormElement = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
}

///|
fn html_legend_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLegendElement" "form"

///|
impl THTMLLegendElement with form(self : Self) -> &THTMLFormElement {
  html_legend_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_legend_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLLegendElement" "align"

///|
impl THTMLLegendElement with align(self : Self) -> String {
  html_legend_element_align_ffi(self.to_js())
}

///|
fn html_legend_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLegendElement" "set_align"

///|
impl THTMLLegendElement with set_align(self : Self, value : String) -> Unit {
  html_legend_element_set_align_ffi(self.to_js(), value)
}