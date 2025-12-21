///|
#external
pub type HTMLOutputElement

///|
pub impl TJsValue for HTMLOutputElement with to_js(self : HTMLOutputElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLOutputElement] HTMLOutputElement::into(
  self : HTMLOutputElement,
) -> T = "%identity"

///|
pub impl THTMLOutputElement for HTMLOutputElement

///|
pub impl THTMLElement for HTMLOutputElement

///|
pub impl TElement for HTMLOutputElement

///|
pub impl TNode for HTMLOutputElement

///|
pub impl TEventTarget for HTMLOutputElement

///|
extern "js" fn html_output_element_ffi() -> HTMLOutputElement = "() => new HTMLOutputElement()"

///|
pub fn HTMLOutputElement::new() -> HTMLOutputElement {
  html_output_element_ffi()
}

///|
pub trait THTMLOutputElement: THTMLElement {
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
}

///|
extern "js" fn html_output_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLOutputElement with check_validity(self : Self) -> Bool {
  html_output_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_output_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLOutputElement with report_validity(self : Self) -> Bool {
  html_output_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_output_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLOutputElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_output_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}
