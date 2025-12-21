///|
#external
pub type HTMLFormElement

///|
pub impl TJsValue for HTMLFormElement with to_js(self : HTMLFormElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFormElement] HTMLFormElement::into(self : HTMLFormElement) -> T = "%identity"

///|
pub impl THTMLFormElement for HTMLFormElement

///|
pub impl THTMLElement for HTMLFormElement

///|
pub impl TElement for HTMLFormElement

///|
pub impl TNode for HTMLFormElement

///|
pub impl TEventTarget for HTMLFormElement

///|
extern "js" fn html_form_element_ffi() -> HTMLFormElement = "() => new HTMLFormElement()"

///|
pub fn HTMLFormElement::new() -> HTMLFormElement {
  html_form_element_ffi()
}

///|
pub trait THTMLFormElement: THTMLElement {
  submit(self : Self) -> Unit = _
  request_submit(self : Self, submitter? : &THTMLElement) -> Unit = _
  reset(self : Self) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
}

///|
extern "js" fn html_form_element_submit_ffi(obj : JsValue) -> Unit = "(obj) => obj.submit(obj)"

///|
impl THTMLFormElement with submit(self : Self) -> Unit {
  html_form_element_submit_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_request_submit_ffi(
  obj : JsValue,
  submitter : JsValue,
) -> Unit = "(obj, submitter) => obj.requestSubmit(obj, submitter)"

///|
impl THTMLFormElement with request_submit(
  self : Self,
  submitter? : &THTMLElement = JsValue::null(),
) -> Unit {
  html_form_element_request_submit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(submitter),
  )
}

///|
extern "js" fn html_form_element_reset_ffi(obj : JsValue) -> Unit = "(obj) => obj.reset(obj)"

///|
impl THTMLFormElement with reset(self : Self) -> Unit {
  html_form_element_reset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLFormElement with check_validity(self : Self) -> Bool {
  html_form_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLFormElement with report_validity(self : Self) -> Bool {
  html_form_element_report_validity_ffi(TJsValue::to_js(self))
}
