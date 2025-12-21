///|
#external
pub type HTMLButtonElement

///|
pub impl TJsValue for HTMLButtonElement with to_js(self : HTMLButtonElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLButtonElement] HTMLButtonElement::into(
  self : HTMLButtonElement,
) -> T = "%identity"

///|
pub impl THTMLButtonElement for HTMLButtonElement

///|
pub impl THTMLElement for HTMLButtonElement

///|
pub impl TElement for HTMLButtonElement

///|
pub impl TNode for HTMLButtonElement

///|
pub impl TEventTarget for HTMLButtonElement

///|
extern "js" fn html_button_element_ffi() -> HTMLButtonElement = "() => new HTMLButtonElement()"

///|
pub fn HTMLButtonElement::new() -> HTMLButtonElement {
  html_button_element_ffi()
}

///|
pub trait THTMLButtonElement: THTMLElement {
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
}

///|
extern "js" fn html_button_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLButtonElement with check_validity(self : Self) -> Bool {
  html_button_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLButtonElement with report_validity(self : Self) -> Bool {
  html_button_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLButtonElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_button_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}
