///|
#external
pub type HTMLLegendElement

///|
pub impl TJsValue for HTMLLegendElement with to_js(self : HTMLLegendElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLegendElement] HTMLLegendElement::into(
  self : HTMLLegendElement,
) -> T = "%identity"

///|
pub impl THTMLLegendElement for HTMLLegendElement

///|
pub impl THTMLElement for HTMLLegendElement

///|
pub impl TElement for HTMLLegendElement

///|
pub impl TNode for HTMLLegendElement

///|
pub impl TEventTarget for HTMLLegendElement

///|
extern "js" fn html_legend_element_new_ffi() -> HTMLLegendElement = "() => new HTMLLegendElement()"

///|
pub fn HTMLLegendElement::new() -> HTMLLegendElement {
  html_legend_element_new_ffi()
}

///|
pub trait THTMLLegendElement: THTMLElement {
  form(self : Self) -> HTMLFormElement = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
extern "js" fn html_legend_element_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLLegendElement with form(self : Self) -> HTMLFormElement {
  html_legend_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_legend_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLLegendElement with align(self : Self) -> String {
  html_legend_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_legend_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLLegendElement with set_align(self : Self, align : String) -> Unit {
  html_legend_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}
