///|
#external
pub type HTMLObjectElement

///|
pub impl TJsValue for HTMLObjectElement with to_js(self : HTMLObjectElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLObjectElement] HTMLObjectElement::into(
  self : HTMLObjectElement,
) -> T = "%identity"

///|
pub impl THTMLObjectElement for HTMLObjectElement

///|
pub impl THTMLElement for HTMLObjectElement

///|
pub impl TElement for HTMLObjectElement

///|
pub impl TNode for HTMLObjectElement

///|
pub impl TEventTarget for HTMLObjectElement

///|
extern "js" fn html_object_element_new_ffi() -> HTMLObjectElement = "() => new HTMLObjectElement()"

///|
pub fn HTMLObjectElement::new() -> HTMLObjectElement {
  html_object_element_new_ffi()
}

///|
pub trait THTMLObjectElement: THTMLElement {
  get_svg_document(self : Self) -> Document = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
}

///|
extern "js" fn html_object_element_get_svg_document_ffi(
  obj : JsValue,
) -> Document = "(obj) => obj.getSVGDocument(obj)"

///|
impl THTMLObjectElement with get_svg_document(self : Self) -> Document {
  html_object_element_get_svg_document_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLObjectElement with check_validity(self : Self) -> Bool {
  html_object_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLObjectElement with report_validity(self : Self) -> Bool {
  html_object_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLObjectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_object_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}
