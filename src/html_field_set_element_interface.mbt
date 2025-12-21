///|
#external
pub type HTMLFieldSetElement

///|
pub impl TJsValue for HTMLFieldSetElement with to_js(self : HTMLFieldSetElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFieldSetElement] HTMLFieldSetElement::into(
  self : HTMLFieldSetElement,
) -> T = "%identity"

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
extern "js" fn html_field_set_element_ffi() -> HTMLFieldSetElement = "() => new HTMLFieldSetElement()"

///|
pub fn HTMLFieldSetElement::new() -> HTMLFieldSetElement {
  html_field_set_element_ffi()
}

///|
pub trait THTMLFieldSetElement: THTMLElement {
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
}

///|
extern "js" fn html_field_set_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLFieldSetElement with check_validity(self : Self) -> Bool {
  html_field_set_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_report_validity_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLFieldSetElement with report_validity(self : Self) -> Bool {
  html_field_set_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLFieldSetElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_field_set_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}
